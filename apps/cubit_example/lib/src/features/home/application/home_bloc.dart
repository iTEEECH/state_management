import 'dart:async';

import 'package:cubit_example/src/features/home/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Cubit<HomeState> {
  final HomeRepository _homeRepository;

  static const _kDefaultCountry = 'France';

  HomeBloc(this._homeRepository) : super(HomeInitial());

  Future<void> fetchCountry({String? name}) async {
    try {
      emit(HomeLoading());

      await Future.delayed(const Duration(seconds: 2));

      final Country country = await _homeRepository.fetchCountry(name: name ?? _kDefaultCountry);

      if (!isClosed) {
        emit(HomeSuccess(country));
      }
    } catch (error) {
      emit(HomeError(error));
    }
  }
}
