import 'package:chat_app/Screens/register.dart';
import 'package:chat_app/Screens/login.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        const LoginPage().id : (context)=> const LoginPage(),
        RegisterPage().id: (context)=>   RegisterPage(),
      },
      initialRoute: "Login",
    );
  }
}