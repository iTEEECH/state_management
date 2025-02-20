import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/src/features/home/home.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (_, HomeState state) {
        return switch(state){
          HomeLoading() => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
          HomeError() => const Center(
              child: Text('Error occurred.'),
            ),
          HomeSuccess() => SizedBox.square(
                dimension: 240.0,
                child: Image.network(state.country.flag),
              ),
          _ => const SizedBox.shrink(),
        };
      },
    );
  }
}
