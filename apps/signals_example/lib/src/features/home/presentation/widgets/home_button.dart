import 'package:flutter/material.dart';
import 'package:signals_example/inject.dart';
import 'package:signals_example/src/features/home/home.dart';

class HomeButton extends StatefulWidget {
  final TextEditingController controller;

  const HomeButton({super.key, required this.controller});

  @override
  State<HomeButton> createState() => _HomeButtonState();
}

class _HomeButtonState extends State<HomeButton> {
  String _text = '';

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_listener);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_listener);
    super.dispose();
  }

  void _listener() {
    setState(() {
      _text = widget.controller.text;
    });
  }

  void _onPressed(BuildContext context) {
    getIt<HomeController>().fetchCountry(name: _text);
  }

  @override
  Widget build(BuildContext context) {
    // Style.
    final ButtonStyle style = ButtonStyle(fixedSize: WidgetStateProperty.all<Size>(Size(180.0, 40.0)));

    // Content.
    return ElevatedButton(
      style: style,
      onPressed: _text.isEmpty ? null : () async => _onPressed(context),
      child: Text('Search'),
    );
  }
}
