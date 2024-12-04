import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
   CustomButton({super.key, required this.name, required this.color, this.onTap});
  final String name;
  final Color color;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: GestureDetector(
        onTap: onTap,
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
      ),
    );
  }
}
