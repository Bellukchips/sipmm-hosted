import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sipmm/application/auth/auth_bloc.dart';
import 'package:sipmm/application/bloc_observe/MyBlocObserver.dart';
import 'package:sipmm/application/login/login_bloc.dart';
import 'package:sipmm/application/memorize_assessment/memorize_assessment_bloc.dart';
import 'package:sipmm/application/news/news_actor/news_actor_bloc.dart';
import 'package:sipmm/application/news/news_watcher/news_watcher_bloc.dart';
import 'package:sipmm/application/payment/category/category_payment_bloc.dart';
import 'package:sipmm/application/payment/history/payment_history_bloc.dart';
import 'package:sipmm/application/payment/method/payment_method_bloc.dart';
import 'package:sipmm/application/payment/save_payment/save_payment_bloc.dart';
import 'package:sipmm/application/permit/permit_actor/permitactor_bloc.dart';
import 'package:sipmm/application/permit/permit_watcher/permitwatcher_bloc.dart';
import 'package:sipmm/application/presence/presence_count/presence_count_bloc.dart';
import 'package:sipmm/application/presence/presence_history/presence_history_bloc.dart';
import 'package:sipmm/application/presence/presence_type/presence_type_bloc.dart';
import 'package:sipmm/application/schedule/category_schedule/category_schedule_bloc.dart';
import 'package:sipmm/application/schedule/schedule_watcher_bloc.dart';
import 'package:sipmm/application/surah/surah_bloc.dart';
import 'package:sipmm/injection.dart';
import 'application/payment/image_upload/image_upload_payment_bloc.dart';
import 'presentation/core/app.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyCc2Wp7mme0uygYd1Wfsp6uiqolTjkkCE8',
          appId: '1:942407023125:web:780b1469fd9ad46e646c1c',
          messagingSenderId: '942407023125',
          projectId: 'sipmm-cdd60'),
    );
  } else {
    await Firebase.initializeApp();
  }

  debugPrint("Handling a background message: ${message.messageId}");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await configureInjection(Environment.dev);
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyCc2Wp7mme0uygYd1Wfsp6uiqolTjkkCE8',
          appId: '1:942407023125:web:780b1469fd9ad46e646c1c',
          messagingSenderId: '942407023125',
          projectId: 'sipmm-cdd60'),
    );
  } else {
    await Firebase.initializeApp();
  }
  //bloc observer
  Bloc.observer = MyBlocObserver();
  runApp(MultiBlocProvider(providers: [
    BlocProvider(
      create: (context) => getIt<AuthBloc>()..add(const AuthEvent.authCheck()),
    ),
    BlocProvider(
      create: (context) => getIt<LoginBloc>(),
    ),
    BlocProvider(create: (context) => getIt<NewsWatcherBloc>()),
    BlocProvider(create: (context) => getIt<NewsWatcherBloc>()),
    BlocProvider(
      create: (context) => getIt<NewsActorBloc>(),
    ),
    BlocProvider(create: (context) => getIt<PermitWatcherBloc>()),
    BlocProvider(create: (context) => getIt<PermitWatcherBloc>()),
    BlocProvider(
      create: (context) => getIt<PermitActorBloc>(),
    ),
    BlocProvider(create: (context) => getIt<ScheduleWatcherBloc>()),
    BlocProvider(create: (context) => getIt<CategoryScheduleBloc>()),
    BlocProvider(
      create: (context) => getIt<MemorizeAssessmentBloc>(),
    ),
    BlocProvider(
      create: (context) => getIt<SurahBloc>(),
    ),
    BlocProvider(
      create: (context) => getIt<PresenceTypeBloc>(),
    ),
    BlocProvider(
      create: (context) => getIt<PresenceCountBloc>(),
    ),
    BlocProvider(
      create: (context) => getIt<PresenceHistoryBloc>(),
    ),
    BlocProvider(
      create: (context) => getIt<CategoryPaymentBloc>(),
    ),
    BlocProvider(
      create: (context) => getIt<PaymentHistoryBloc>(),
    ),
    BlocProvider(
      create: (context) => getIt<PaymentMethodBloc>(),
    ),
    BlocProvider(
      create: (context) => getIt<SavePaymentBloc>(),
    ),
    BlocProvider(
      create: (context) => getIt<ImageUploadPaymentBloc>(),
    ),
  ], child: const App()));
}

// void main() {
//   runApp( const MaterialApp(
//     home: TestHome(),
//   ));
// }

// class TestHome extends StatefulWidget {
//   const TestHome({super.key});

//   @override
//   State<TestHome> createState() => _TestHomeState();
// }

// class _TestHomeState extends State<TestHome> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           TextFormField(),
//           const SizedBox(
//             height: 100,
//           ),
//           TextFormField(),
//         ],
//       ),
//     );
//   }
// }
