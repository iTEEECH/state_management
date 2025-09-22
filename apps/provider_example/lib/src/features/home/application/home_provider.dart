import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:provider_example/src/features/home/home.dart';

class HomeProvider with ChangeNotifier {
  final HomeRepository _homeRepository;

  static const _kDefaultCountry = 'France';

  HomeState _state = const HomeInitial();

  HomeState get state => _state;

  HomeProvider(this._homeRepository);

  Future<void> fetchCountry({String? name}) async {
    try {
      _state = HomeLoading();
      notifyListeners();

      await Future.delayed(const Duration(seconds: 2));

      final Country country = await _homeRepository.fetchCountry(name: name ?? _kDefaultCountry);

      _state = HomeSuccess(country);
    } catch (error) {
      _state = HomeError(error);
    } finally {
      notifyListeners();
    }
  }
}
