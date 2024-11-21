import 'package:chat_app/Items/button.dart';
import 'package:chat_app/Items/constans.dart';
import 'package:chat_app/Items/custom_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});
  

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
                    "Register",
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
              child: CustomTextfield(
                name: "Email",
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CustomTextfield(
                name: "Password",
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Button(
              name: "REGISTER",
              color: basecolor,
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
                   onTap: () {
                     Navigator.pop(context);
                   },
                   child: const 
                      Text(
                        "Login",
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