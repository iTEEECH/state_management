import 'package:equatable/equatable.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

final class FetchCountryEvent extends HomeEvent {
  final String name;

  static const _kDefaultCountry = 'France';

  const FetchCountryEvent({this.name = _kDefaultCountry});
}