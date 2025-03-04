import 'package:equatable/equatable.dart';
import 'package:cubit_example/src/features/home/home.dart';

sealed class HomeState extends Equatable {
  const HomeState();
}

final class HomeInitial extends HomeState {
  const HomeInitial();

  @override
  List<Object> get props => [];
}

final class HomeLoading extends HomeState {
  const HomeLoading();

  @override
  List<Object> get props => [];
}

final class HomeSuccess extends HomeState {
  final Country country;

  const HomeSuccess(this.country);

  @override
  List<Object> get props => [country];
}

final class HomeError extends HomeState {
  const HomeError();

  @override
  List<Object> get props => [];
}
