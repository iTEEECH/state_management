import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/src/features/home/home.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 240.0,
      child: Consumer<HomeProvider>(
        builder: (context, provider, child) {
          return switch (provider.state) {
            HomeLoading() => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            HomeError(:final error) => Center(
              child: Text('$error'),
            ),
            HomeSuccess(:final Country country) => Center(
                child: Image.network(country.flag),
              ),
            _ => const SizedBox.shrink(),
          };
        },
      ),
    );
  }
}
