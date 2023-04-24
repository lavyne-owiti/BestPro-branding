import 'package:bestpro_branding_app/features/authorazation/presentation/screens/login_page.dart';
import 'package:bestpro_branding_app/features/onboarding/presentation/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

bool show = true;
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // OnboardingLocalDataSource();
  await Firebase.initializeApp();
  // Feature;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: show ? const SplashScreen() : const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
