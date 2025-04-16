import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc_example/src/features/home/home.dart';

@immutable
sealed class HomeState extends Equatable {
  const HomeState();
}

@immutable
final class HomeInitial extends HomeState {
  const HomeInitial();

  @override
  List<Object> get props => [];
}

@immutable
final class HomeLoading extends HomeState {
  const HomeLoading();

  @override
  List<Object> get props => [];
}

@immutable
final class HomeSuccess extends HomeState {
  final Country country;

  const HomeSuccess(this.country);

  @override
  List<Object> get props => [country];
}

@immutable
final class HomeError extends HomeState {
  const HomeError();

  @override
  List<Object> get props => [];
}
