import 'dart:async';

import 'package:cubit_example/src/features/home/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Cubit<HomeState> {
  final HomeRepository _homeRepository;

  static const _kDefaultCountry = 'France';

  HomeBloc(this._homeRepository) : super(HomeInitial());

  Future<void> fetchCountry({String? name}) async {
    emit(HomeLoading());

    Future.delayed(const Duration(seconds: 2));

    final Country country = await _homeRepository.fetchCountry(name: name ?? _kDefaultCountry);

    emit(HomeSuccess(country));
  }
}