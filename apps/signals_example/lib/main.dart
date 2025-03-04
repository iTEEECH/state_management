import 'package:flutter/material.dart';
import 'package:signals_example/inject.dart';
import 'package:signals_example/src/features/application/application.dart';

void main() {
  setup();
  runApp(const Application());
}