import 'package:chat_app/Items/button.dart';
import 'package:chat_app/Items/constans.dart';
import 'package:chat_app/Items/custuim%20textfeild.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: basecolor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 200,
            ),
            Image.asset('assets/images/scholar.png'),
            const Text(
              "Scholar Chat",
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontFamily: "Pacifico",
              ),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Custuim_textfeild(
                name: "Email",
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Custuim_textfeild(
                name: "Password",
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Button(
              name: "Sign In",
              color: basecolor,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "dont have an account",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: null,
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
