// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:alice/alice.dart' as _i12;
import 'package:dio/dio.dart' as _i13;
import 'package:firebase_messaging/firebase_messaging.dart' as _i7;
import 'package:flutter/material.dart' as _i4;
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i10;
import 'package:shared_preferences/shared_preferences.dart' as _i11;

import 'application/auth/auth_bloc.dart' as _i46;
import 'application/login/login_bloc.dart' as _i32;
import 'application/memorize_assessment/memorize_assessment_bloc.dart' as _i33;
import 'application/news/news_actor/news_actor_bloc.dart' as _i34;
import 'application/news/news_watcher/news_watcher_bloc.dart' as _i35;
import 'application/payment/category/category_payment_bloc.dart' as _i47;
import 'application/payment/history/payment_history_bloc.dart' as _i36;
import 'application/payment/image_upload/image_upload_payment_bloc.dart' as _i9;
import 'application/payment/method/payment_method_bloc.dart' as _i37;
import 'application/payment/save_payment/save_payment_bloc.dart' as _i43;
import 'application/permit/permit_actor/permitactor_bloc.dart' as _i38;
import 'application/permit/permit_watcher/permitwatcher_bloc.dart' as _i39;
import 'application/presence/presence_count/presence_count_bloc.dart' as _i40;
import 'application/presence/presence_history/presence_history_bloc.dart'
    as _i41;
import 'application/presence/presence_type/presence_type_bloc.dart' as _i42;
import 'application/schedule/category_schedule/category_schedule_bloc.dart'
    as _i48;
import 'application/schedule/schedule_watcher_bloc.dart' as _i44;
import 'application/surah/surah_bloc.dart' as _i45;
import 'domain/assessment/i_assessment_repository.dart' as _i15;
import 'domain/auth/i_auth_facade.dart' as _i17;
import 'domain/fcm/i_fcm.dart' as _i19;
import 'domain/login/i_login_repository.dart' as _i20;
import 'domain/news/i_news_repository.dart' as _i22;
import 'domain/payment/i_payment_repository.dart' as _i24;
import 'domain/permit/i_permit_repository.dart' as _i26;
import 'domain/presence/i_presence_repository.dart' as _i28;
import 'domain/schedule/i_schedule_repository.dart' as _i30;
import 'infrastructure/assessment/assessment_repository.dart' as _i16;
import 'infrastructure/auth/auth_repository.dart' as _i18;
import 'infrastructure/core/register_modules.dart' as _i49;
import 'infrastructure/fcm/fcm_services.dart' as _i14;
import 'infrastructure/login/login_repository.dart' as _i21;
import 'infrastructure/news/news_repository.dart' as _i23;
import 'infrastructure/payment/payment_repository.dart' as _i25;
import 'infrastructure/permit/permit_repository.dart' as _i27;
import 'infrastructure/presence/presence_repository.dart' as _i29;
import 'infrastructure/schedule/schedule_repository.dart' as _i31;
import 'presentation/core/app.dart' as _i3;
import 'presentation/routes/app_router.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final registerModules = _$RegisterModules();
  gh.factory<_i3.App>(() => _i3.App(key: get<_i4.Key>()));
  gh.lazySingleton<_i5.AppRouter>(() => registerModules.appRouter);
  gh.lazySingleton<_i6.Client>(() => registerModules.httpClient);
  gh.lazySingleton<_i7.FirebaseMessaging>(
      () => registerModules.firebaseMessaging);
  gh.lazySingleton<_i8.FlutterLocalNotificationsPlugin>(
      () => registerModules.flutterLocalNotificationsPlugin);
  gh.factory<_i9.ImageUploadPaymentBloc>(() => _i9.ImageUploadPaymentBloc());
  gh.lazySingleton<_i10.Logger>(() => registerModules.logger);
  await gh.lazySingletonAsync<_i11.SharedPreferences>(
    () => registerModules.sharedPreferences,
    preResolve: true,
  );
  gh.factory<String>(
    () => registerModules.baseUrl,
    instanceName: 'baseUrl',
  );
  gh.lazySingleton<_i12.Alice>(
      () => registerModules.alice(get<_i5.AppRouter>()));
  await gh.lazySingletonAsync<_i13.Dio>(
    () => registerModules.network(
      get<String>(instanceName: 'baseUrl'),
      get<_i11.SharedPreferences>(),
      get<_i12.Alice>(),
    ),
    preResolve: true,
  );
  gh.lazySingleton<_i14.FCMServices>(() => registerModules.fcmServices(
        get<_i7.FirebaseMessaging>(),
        get<_i8.FlutterLocalNotificationsPlugin>(),
        get<_i13.Dio>(),
      ));
  gh.lazySingleton<_i15.IAssessmentRepository>(
      () => _i16.AssessmentRepository(get<_i13.Dio>()));
  gh.lazySingleton<_i17.IAuthFacade>(() => _i18.AuthRepository(
        get<_i11.SharedPreferences>(),
        get<_i13.Dio>(),
      ));
  gh.lazySingleton<_i19.IFCM>(() => _i14.FCMServices(
        get<_i7.FirebaseMessaging>(),
        get<_i8.FlutterLocalNotificationsPlugin>(),
        get<_i13.Dio>(),
      ));
  gh.lazySingleton<_i20.ILoginFacade>(
      () => _i21.LoginRepository(get<_i13.Dio>()));
  gh.lazySingleton<_i22.INewsRepository>(
      () => _i23.NewsRepository(get<_i13.Dio>()));
  gh.lazySingleton<_i24.IPaymentRepository>(
      () => _i25.PaymentRepository(get<_i13.Dio>()));
  gh.lazySingleton<_i26.IPermitRepository>(
      () => _i27.PermitRepository(get<_i13.Dio>()));
  gh.lazySingleton<_i28.IPresenceRepository>(
      () => _i29.PresenceRepository(get<_i13.Dio>()));
  gh.lazySingleton<_i30.IScheduleRepository>(
      () => _i31.ScheduleRepository(get<_i13.Dio>()));
  gh.factory<_i32.LoginBloc>(() => _i32.LoginBloc(get<_i20.ILoginFacade>()));
  gh.factory<_i33.MemorizeAssessmentBloc>(
      () => _i33.MemorizeAssessmentBloc(get<_i15.IAssessmentRepository>()));
  gh.factory<_i34.NewsActorBloc>(
      () => _i34.NewsActorBloc(get<_i22.INewsRepository>()));
  gh.factory<_i35.NewsWatcherBloc>(
      () => _i35.NewsWatcherBloc(get<_i22.INewsRepository>()));
  gh.factory<_i36.PaymentHistoryBloc>(
      () => _i36.PaymentHistoryBloc(get<_i24.IPaymentRepository>()));
  gh.factory<_i37.PaymentMethodBloc>(
      () => _i37.PaymentMethodBloc(get<_i24.IPaymentRepository>()));
  gh.factory<_i38.PermitActorBloc>(
      () => _i38.PermitActorBloc(get<_i26.IPermitRepository>()));
  gh.factory<_i39.PermitWatcherBloc>(
      () => _i39.PermitWatcherBloc(get<_i26.IPermitRepository>()));
  gh.factory<_i40.PresenceCountBloc>(
      () => _i40.PresenceCountBloc(get<_i28.IPresenceRepository>()));
  gh.factory<_i41.PresenceHistoryBloc>(
      () => _i41.PresenceHistoryBloc(get<_i28.IPresenceRepository>()));
  gh.factory<_i42.PresenceTypeBloc>(
      () => _i42.PresenceTypeBloc(get<_i28.IPresenceRepository>()));
  gh.factory<_i43.SavePaymentBloc>(
      () => _i43.SavePaymentBloc(get<_i24.IPaymentRepository>()));
  gh.factory<_i44.ScheduleWatcherBloc>(
      () => _i44.ScheduleWatcherBloc(get<_i30.IScheduleRepository>()));
  gh.factory<_i45.SurahBloc>(
      () => _i45.SurahBloc(get<_i15.IAssessmentRepository>()));
  gh.factory<_i46.AuthBloc>(() => _i46.AuthBloc(get<_i17.IAuthFacade>()));
  gh.factory<_i47.CategoryPaymentBloc>(
      () => _i47.CategoryPaymentBloc(get<_i24.IPaymentRepository>()));
  gh.factory<_i48.CategoryScheduleBloc>(
      () => _i48.CategoryScheduleBloc(get<_i30.IScheduleRepository>()));
  return get;
}

class _$RegisterModules extends _i49.RegisterModules {}
