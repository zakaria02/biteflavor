import 'package:biteflavor/utils/constant/app_colors.dart';
import 'package:biteflavor/utils/constant/app_texts.dart';
import 'package:biteflavor/utils/configurations/configurations.dart';
import 'package:biteflavor/utils/providers/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:toastification/toastification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initLocalDatabase();
  await initNotifications();
  await initFirebase();
  await initGoogleAdmob();

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
      initNotificationClickListnner(goRouter);
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
