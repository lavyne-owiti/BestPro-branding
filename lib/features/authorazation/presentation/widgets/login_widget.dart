import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final emailController = TextEditingController();
  final passordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Image.asset(
              "assets/images/logo.png",
              height: 150,
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(top: 10, bottom: 5),
            child: const Text(
              "Sign in",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 20),
            child: TextField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                labelText: "Email Adress",
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: TextField(
              controller: passordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                labelText: "password",
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  "fogort password?",
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {},
              child: const Text("Sign in"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("Don't have an account?"),
              TextButton(
                onPressed: () {},
                child: const Text("Sign up"),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: <Widget>[
                buildDivider(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Or connect with",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                buildDivider(),
              ],
            ),
          ),
          Container(
            color: Colors.amber,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: Image.asset(
                  "assets/images/fb.png",
                )),
                Expanded(
                  child: Image.asset(
                    "assets/images/google.png",
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    "assets/images/twitter.png",
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Expanded buildDivider() {
  return const Expanded(
    child: Divider(
      color: Colors.black,
      height: 1.5,
    ),
  );
}
