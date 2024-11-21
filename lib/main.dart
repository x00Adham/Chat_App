import 'package:chat_app/Screens/Register.dart';
import 'package:chat_app/Screens/login.dart';
import 'package:flutter/material.dart';
import "package:device_preview/device_preview.dart";

void main() {
  runApp( 
    DevicePreview(
      enabled: true,
      builder: (context) => const ChatApp(),
    )
  );
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "Login" : (context)=> const LoginPage(),
        "Register" : (context)=> const RegisterPage(),
      },
      initialRoute: "Login",
    );
  }
}