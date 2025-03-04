import 'dart:async';

import 'package:flutter_bloc_example/src/features/home/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _homeRepository;

  HomeBloc(this._homeRepository) : super(HomeInitial()) {
    on<FetchCountryEvent>(fetchCountry);
  }

  Future<void> fetchCountry(FetchCountryEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoading());

    Future.delayed(const Duration(seconds: 2));

    final Country country = await _homeRepository.fetchCountry(name: event.name);

    emit(HomeSuccess(country));
  }
}