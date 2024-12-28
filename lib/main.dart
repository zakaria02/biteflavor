import 'package:biteflavor/firebase_options.dart';
import 'package:biteflavor/uios/author_uio.dart';
import 'package:biteflavor/uios/category_uio.dart';
import 'package:biteflavor/uios/post_uio.dart';
import 'package:biteflavor/utils/constant/app_colors.dart';
import 'package:biteflavor/utils/constant/app_texts.dart';
import 'package:biteflavor/utils/notifications/notifications.dart';
import 'package:biteflavor/utils/providers/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:toastification/toastification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(PostUioAdapter());
  Hive.registerAdapter(CategoryUioAdapter());
  Hive.registerAdapter(AuthorUioAdapter());

  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  OneSignal.initialize("d5b3fbe5-14b7-485d-9a4b-8d3e803d3586");
  await OneSignal.Notifications.requestPermission(true);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  MobileAds.instance.initialize();
  MobileAds.instance.updateRequestConfiguration(
    RequestConfiguration(
      testDeviceIds: [
        '7ED5CEE9072BC98CBD4CF5C4B58BA2D5', // Android test device
        "e6e89e0c49562d6cdc067c1584fc5b89" // iOS test device
      ],
    ),
  );

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(routerProvider);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initNotification(goRouter);
    });

    return ToastificationWrapper(
      child: MaterialApp.router(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routerConfig: goRouter,
        title: AppTexts.blogTitle,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: AppColors.primaryColor,
        ),
      ),
    );
  }
}
