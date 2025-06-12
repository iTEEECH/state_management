import 'package:flutter/material.dart';

class HomeTextField extends StatelessWidget {
  final TextEditingController controller;

  const HomeTextField({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    // Style.
    final InputDecoration decoration = InputDecoration(
      hintText: 'Country name',
      border: OutlineInputBorder(),
    );

    // Content.
    return SizedBox(
      width: 400.0,
      child: TextFormField(
        decoration: decoration,
        controller: controller,
      ),
    );
  }
}
