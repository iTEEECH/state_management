import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';
import 'package:signals_example/inject.dart';
import 'package:signals_example/src/features/home/home.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    // Watcher.
    final AsyncState<Country> state = getIt<HomeController>().country.watch(context);

    // Content.
    return Center(
      child: SizedBox.square(
        dimension: 240.0,
        child: Watch.builder(
          builder: (_) {
            return switch (state) {
              AsyncError(:final error) => Text('$error'),
              AsyncData(value: final country) => Image.network(country.flag),
              _ => const CircularProgressIndicator.adaptive(),
            };
          },
        ),
      ),
    );
  }
}
