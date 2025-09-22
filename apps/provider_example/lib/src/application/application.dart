import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/inject.dart';
import 'package:provider_example/src/features/home/home.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider Example',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), useMaterial3: true),
      home: ChangeNotifierProvider(
        create: (context) => getIt<HomeProvider>()..fetchCountry(),
        child: Builder(builder: (context) => const HomePage()),
      ),
    );
  }
}
