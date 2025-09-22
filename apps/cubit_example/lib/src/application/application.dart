import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cubit_example/inject.dart';
import 'package:cubit_example/src/features/home/home.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cubit Example',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), useMaterial3: true),
      home: BlocProvider(
        create: (context) => getIt<HomeBloc>()..fetchCountry(),
        child: Builder(builder: (context) => const HomePage()),
      ),
    );
  }
}
