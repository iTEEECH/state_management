import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

@immutable
final class FetchCountryEvent extends HomeEvent {
  final String? name;

  const FetchCountryEvent({this.name});
}