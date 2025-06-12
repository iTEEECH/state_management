import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cubit_example/src/features/home/home.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox.square(
        dimension: 240.0,
        child: BlocBuilder<HomeBloc, HomeState>(
          buildWhen: (HomeState previous, HomeState current) {
            return previous != current;
          },
          builder: (_, HomeState state) {
            return switch (state) {
              HomeError(:final error) => Text('$error'),
              HomeLoading() => CircularProgressIndicator.adaptive(),
              HomeSuccess() => Image.network(state.country.flag),
              _ => const SizedBox.shrink(),
            };
          },
        ),
      ),
    );
  }
}
