import 'package:chat_app/Items/custom_button.dart';
import 'package:chat_app/Items/constans.dart';
import 'package:chat_app/Items/custom_textfield.dart';
import 'package:chat_app/Screens/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  final String id = "Login";

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
              "Chats",
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontFamily: "Pacifico",
              ),
            ),
            const SizedBox(
              height: 16,
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CustomTextfield(
                name: "Email",
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CustomTextfield(
                name: "Password",
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            CustomButton(
              name: "LOGIN",
              color: basecolor,
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "dont have an account ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context,   RegisterPage().id);
                    },
                  child: const Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
