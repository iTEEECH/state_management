import 'package:flutter/material.dart';
import 'package:signals_example/inject.dart';
import 'package:signals_example/src/features/home/home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();
  
  @override
  void initState() {
    super.initState();
    getIt<HomeController>().fetchCountry();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signals Example'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            spacing: 40.0,
            children: <Widget>[
              HomeImage(),
              HomeTextField(controller: _controller),
              HomeButton(controller: _controller),
            ],
          ),
        ),
      ),
    );
  }
}
