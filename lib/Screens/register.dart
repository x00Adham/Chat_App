import 'package:chat_app/Items/custom_button.dart';
import 'package:chat_app/Items/constans.dart';
import 'package:chat_app/Items/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatelessWidget {
   RegisterPage({super.key});
  final String id = "Register";
  String? email;
  String? pass;
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
              "Chat",
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CustomTextfield(
                name: "Email",
                onChanged: (data) {
                  email = data;
                }
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CustomTextfield(
                onChanged: (data){
                  pass = data;
                },
                name: "Password",
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            CustomButton(
              onTap: () async{
                var auth = FirebaseAuth.instance;
               UserCredential user = await auth.createUserWithEmailAndPassword(email: email!, password: pass!);
               print(user.user?.displayName);
              },
              name: "REGISTER",
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