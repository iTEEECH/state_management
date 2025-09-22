import 'dart:async';

import 'package:flutter_bloc_example/src/features/home/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _homeRepository;

  static const _kDefaultCountry = 'France';

  HomeBloc(this._homeRepository) : super(HomeInitial()) {
    on<FetchCountryEvent>(_fetchCountry);
  }

  Future<void> _fetchCountry(FetchCountryEvent event, Emitter<HomeState> emit) async {
    try {
      emit(HomeLoading());

      await Future.delayed(const Duration(seconds: 2));

      final Country country = await _homeRepository.fetchCountry(name: event.name ?? _kDefaultCountry);

      if (!isClosed) {
        emit(HomeSuccess(country));
      }
    } catch (error) {
      emit(HomeError(error));
    }
  }
}
