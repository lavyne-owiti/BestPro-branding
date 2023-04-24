// import 'package:bestpro_branding_app/core/shared/features.dart';
import 'package:bestpro_branding_app/features/authorazation/presentation/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TeaserScreens extends StatelessWidget {
  TeaserScreens({super.key});

  final List<PageViewModel> pages = [
    PageViewModel(
      title: "Hoodies",
      body: "Get the best,unique and customized hoodies to your own liking.",
      image: Center(
        child: Image.asset(
          "assets/images/hoodyman.png",
          height: 500,
          width: 350,
        ),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
        title: "Banners",
        body:
            "Customize Banners to find the perfect fit online and build your own brand recognition",
        image: Center(
          child: Image.asset(
            "assets/images/banner.png",
            height: 500,
          ),
        ),
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        )),
    PageViewModel(
        title: "Wall branding",
        body:
            "We believe in quality that gives your wall a new look defining your style",
        image: Center(
          child: Image.asset(
            "assets/images/wallb.png",
            height: 500,
          ),
        ),
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Onboarding"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: IntroductionScreen(
          pages: pages,
          dotsDecorator: const DotsDecorator(
            size: Size(5, 5),
            color: Colors.blue,
            activeSize: Size.square(10),
            activeColor: Colors.green,
          ),
          showDoneButton: true,
          done: const Text(
            "done",
            style: TextStyle(fontSize: 18),
          ),
          showSkipButton: true,
          skip: const Text(
            "skip",
            style: TextStyle(fontSize: 18),
          ),
          showNextButton: true,
          next: const Icon(
            Icons.arrow_forward,
            size: 15,
          ),
          onDone: () {
            onDone(context);
          },
          curve: Curves.bounceInOut,
        ),
      ),
    );
  }

  void onDone(context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool("ON_BOARDING", false);
    // Feature;
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => const LoginPage()));
  }
}
