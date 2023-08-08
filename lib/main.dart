import 'dart:ui';

import 'package:evision_distribution_app/app_theme.dart';
import 'package:evision_distribution_app/pages/company_configuration_page.dart';
import 'package:evision_distribution_app/pages/company_page.dart';
import 'package:evision_distribution_app/pages/dashboard_page.dart';
import 'package:evision_distribution_app/pages/select_company_page.dart';
import 'package:evision_distribution_app/pages/settings_page.dart';
import 'package:evision_distribution_app/pages/start_cofiguration_page.dart';
import 'package:evision_distribution_app/pages/home_page.dart';
import 'package:evision_distribution_app/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };
  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Distributors App - Evision',
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => const HomePage(),
        '/company': (context) => const CompanyPage(),
        '/company_configuration': (context) => const CompanyConfigurationPage(),
        '/login': (context) => LoginPage(),
        '/company_selection': (context) => const SelectCompanyPage(),
        '/start_configuration': (context) => const StartConfigurationPage(),
        '/dashboard': (context) => const DashboardPage(),
        '/settings': (context) => const SettingsPage()
      },
      home: const SelectCompanyPage(),
    );
  }
}
