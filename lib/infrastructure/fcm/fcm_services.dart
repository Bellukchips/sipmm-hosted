import 'dart:async';
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:sipmm/domain/core/failure/auth_failure/auth_failure.dart';
import 'package:sipmm/domain/fcm/i_fcm.dart';
import 'package:sipmm/domain/news/news.dart';
import 'package:sipmm/injection.dart';
import 'package:sipmm/presentation/routes/app_router.dart';
import 'package:sipmm/shared/shared.dart';

@LazySingleton(as: IFCM)
class FCMServices implements IFCM {
  final FirebaseMessaging _firebaseMessaging;
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;
  final Dio _network;
  FCMServices(
    this._firebaseMessaging,
    this._flutterLocalNotificationsPlugin,
    this._network,
  );
  void _configureSelectNotificationSubject() {
    selectNotificationStream.stream.listen((String? payload) async {
      Map<String, dynamic> map = jsonDecode(payload!);

      if (map['page'] == 'detailNotifPage') {
        getIt<AppRouter>().replace(DetailNoticeRoute(
            news: News(
                id: map['id'], title: map['title'], desc: map['description']),
            isOld: true));
      } else if (map['page'] == 'paymentPage') {
        getIt<AppRouter>().replace(
            HistoryPaymentRoute(idCategory: map['id_payment'], name: ''));
      } else if (map['page'] == 'permitPage') {
        getIt<AppRouter>().replace(HomeRoute(selectMenu: MenuHome.perizinan));
      }
    });
  }

  //
  final StreamController<String?> selectNotificationStream =
      StreamController<String?>.broadcast();

  @override
  Future<void> init() async {
    await requestPermissions();
    await _configureLocalNotification();
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
    _firebaseMessaging.getToken().then((value) {
      debugPrint('FCM Token: $value');
      saveTokenFcm(value!);
    });
    
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      debugPrint('FCM Message received: ${message.data}');
      await _showNotification(message);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      debugPrint('FCM Message opened: ${message.data}');
    });

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    _configureSelectNotificationSubject();
  }

  @override
  Future<void> requestPermissions() async {
    await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      sound: true,
    );
    _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.requestPermission();
    _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(alert: true, badge: true, sound: true);
  }

  Future<void> _showNotification(RemoteMessage? message) async {
    AndroidNotificationDetails android = const AndroidNotificationDetails(
      'sipmm_id',
      'sipmm_channel',
      enableVibration: true,
      playSound: true,
      channelShowBadge: true,
      importance: Importance.max,
      priority: Priority.high,
    );
    DarwinNotificationDetails ios = const DarwinNotificationDetails();
    NotificationDetails platform =
        NotificationDetails(android: android, iOS: ios);
    await _flutterLocalNotificationsPlugin.show(
      0,
      message?.notification?.title ??
          message?.data['title'] ??
          'New Notification',
      message?.notification?.body ??
          message?.data['body'] ??
          'Notification content',
      platform,
      payload: message?.data['data'] ?? '',
    );
  }

  Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    await Firebase.initializeApp();
    // If the application is in the background and the message contains a notification payload, display a notification
    debugPrint("Handling a background message: ${message.messageId}");
  }

  Future<void> _configureLocalNotification() async {
    /// Streams are created so that app can respond to notification-related events
    /// since the plugin is initialised in the `main` function
    final StreamController<ReceivedNotification>
        didReceiveLocalNotificationStream =
        StreamController<ReceivedNotification>.broadcast();
    AndroidInitializationSettings initializationSettingsAndroid =
        const AndroidInitializationSettings('@mipmap/ic_launcher');
    DarwinInitializationSettings initializationSettingsIOS =
        DarwinInitializationSettings(
            requestAlertPermission: false,
            requestBadgePermission: false,
            requestSoundPermission: false,
            onDidReceiveLocalNotification:
                (int id, String? title, String? body, String? payload) async {
              didReceiveLocalNotificationStream.add(
                ReceivedNotification(
                  id: id,
                  title: title,
                  body: body,
                  payload: payload,
                ),
              );
            });
    final initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
    await _flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse:
          (NotificationResponse notificationResponse) {
        switch (notificationResponse.notificationResponseType) {
          case NotificationResponseType.selectedNotification:
            debugPrint('selected ${notificationResponse.payload}');
            selectNotificationStream.add(notificationResponse.payload);
            break;
          case NotificationResponseType.selectedNotificationAction:
            debugPrint('action ${notificationResponse.actionId}');
            selectNotificationStream.add(notificationResponse.payload);
            break;
        }
      },
    );
  }

  @override
  Future<Either<AuthFailure, Unit>> saveTokenFcm(String token) async {
    await Future.delayed(const Duration(seconds: 1));
    try {
      final response =
          await _network.post('/app/token', data: {"token": token});
      if (response.statusCode == 200) {
        return right(unit);
      }
      return left(const AuthFailure.failed('Request time out'));
    } on DioError catch (e) {
      var status = e.response?.statusCode?.toString();

      if (status == '500') {
        return left(const AuthFailure.failed('Server Error'));
      } else if (status == '401') {
        return left(const AuthFailure.failed('Unauthenticated'));
      } else {
        return left(AuthFailure.failed(e.message));
      }
    }
  }
}

class ReceivedNotification {
  ReceivedNotification({
    required this.id,
    required this.title,
    required this.body,
    required this.payload,
  });

  final int id;
  final String? title;
  final String? body;
  final String? payload;
}
