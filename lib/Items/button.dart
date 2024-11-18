import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.name, required this.color});
  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          name,
          style: TextStyle(
            fontSize: 20,
            color: color,
          ),
        ),
      ),
    );
  }
}
