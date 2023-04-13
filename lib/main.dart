// import 'package:bestpro_branding_app/core/shared/features.dart';
import 'package:bestpro_branding_app/features/onboarding/presentation/screens/splash.dart';
import 'package:bestpro_branding_app/homepage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool show = true;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  show = prefs.getBool("ON_BOARDING") ?? true;
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
      home: show ? const SplashScreen() : const MyHomePage(title: "Explore"),
      debugShowCheckedModeBanner: false,
    );
  }
}
