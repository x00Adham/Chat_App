import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  CustomTextfield({super.key,required this.name,this.onChanged}); 
  final String name;
  Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return  TextField(
      onChanged: onChanged,
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
