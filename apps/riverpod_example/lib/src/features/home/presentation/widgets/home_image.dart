import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_example/src/features/home/home.dart';

class HomeImage extends ConsumerWidget {
  const HomeImage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Provider(s).
    final AsyncValue<Country?> result = ref.watch(homeControllerProvider);

    // Content.
    return Center(
      child: SizedBox.square(
        dimension: 240.0,
        child: switch (result) {
          AsyncError(:final error) => Text('$error'),
          AsyncLoading() => CircularProgressIndicator.adaptive(),
          AsyncData(value: final Country? country) => Image.network(country!.flag),
          _ => const SizedBox.shrink(),
        },
      ),
    );
  }
}
