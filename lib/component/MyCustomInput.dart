import 'package:flutter/material.dart';

class MyCustomInput extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final Function(String) onChanged;

  MyCustomInput({
    required this.controller,
    required this.labelText,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
      ),
    );
  }
}