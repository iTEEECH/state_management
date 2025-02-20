import 'package:flutter_bloc_example/src/features/home/home.dart';

class HomeState {
  const HomeState();
}

class HomeInitial extends HomeState {
  const HomeInitial();
}

class HomeLoading extends HomeState {
  const HomeLoading();
}

class HomeSuccess extends HomeState {
  final Country country;

  const HomeSuccess(this.country);
}

class HomeError extends HomeState {
  const HomeError();
}
