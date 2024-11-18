import 'package:flutter/material.dart';

class Custuim_textfeild extends StatelessWidget {
  const Custuim_textfeild({super.key,required this.name}); 
  final String name;

  @override
  Widget build(BuildContext context) {
    return  TextField(
      style: const TextStyle(
        color: Colors.white,
      ),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        fillColor: Colors.white,
        label: Text(
          name,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
