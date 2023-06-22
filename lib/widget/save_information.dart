import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final VoidCallback onPressed;
  const Button({super.key, required this.onPressed});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        height: 50,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 248, 19, 3),
          borderRadius: BorderRadius.all(
            Radius.circular(24),
          ),
        ),
        child: const Center(
          child: Text(
            'Lưu thay đổi',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
