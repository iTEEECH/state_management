import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riverpod_example/src/features/home/home.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Hooks.
    final TextEditingController controller = useTextEditingController();

    // Content.
    return Scaffold(
      appBar: AppBar(title: Text('Riverpod Example')),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          spacing: 40.0,
          children: <Widget>[
            HomeImage(),
            HomeTextField(controller: controller),
            HomeButton(controller: controller),
          ],
        ),
      ),
    );
  }
}
