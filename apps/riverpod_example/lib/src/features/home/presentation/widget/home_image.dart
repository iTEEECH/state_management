import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_example/src/features/home/home.dart';

class HomeImage extends ConsumerWidget {
  const HomeImage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Provider.
    final AsyncValue<Country?> result = ref.watch(homeControllerProvider);

    // Content.
    return SizedBox.square(
      dimension: 240.0,
      child: result.maybeWhen(
        error: (_, __) => Center(
          child: Text('Error occurred.'),
        ),
        loading: () => Center(
          child: CircularProgressIndicator.adaptive(),
        ),
        data: (Country? country) => Image.network(country!.flag),
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}
