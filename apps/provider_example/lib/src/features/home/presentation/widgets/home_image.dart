import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/src/features/home/home.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox.square(
        dimension: 240.0,
        child: Consumer<HomeProvider>(
          builder: (context, provider, child) {
            return switch (provider.state) {
              HomeError(:final error) => Text('$error'),
              HomeLoading() => const CircularProgressIndicator.adaptive(),
              HomeSuccess(:final Country country) => Image.network(country.flag),
              _ => const SizedBox.shrink(),
            };
          },
        ),
      ),
    );
  }
}
