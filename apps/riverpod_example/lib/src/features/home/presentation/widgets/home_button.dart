import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_example/src/features/home/home.dart';

class HomeButton extends HookConsumerWidget {
  final TextEditingController controller;

  const HomeButton({super.key, required this.controller});

  Future<void> _onPressed(WidgetRef ref, String name) async {
    await ref.read(homeControllerProvider.notifier).fetchCountry(name: name);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Hooks.
    final String text = useValueListenable(controller).text;

    // Style.
    final ButtonStyle style = ButtonStyle(fixedSize: WidgetStateProperty.all<Size>(Size(180.0, 40.0)));

    // Content.
    return ElevatedButton(
      style: style,
      onPressed: text.isEmpty ? null : () async => _onPressed(ref, text),
      child: Text('Search'),
    );
  }
}
