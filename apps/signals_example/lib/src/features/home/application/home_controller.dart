import 'dart:async';

import 'package:signals/signals_flutter.dart';
import 'package:signals_example/src/features/home/home.dart';

class HomeController {
  final HomeRepository _homeRepository;

  static const _kDefaultCountry = 'France';

  final _country = signal<AsyncState<Country>>(const AsyncLoading());

  ReadonlySignal<AsyncState<Country>> get country => _country;

  HomeController(this._homeRepository);

  Future<void> fetchCountry({String? name}) async {
    try {
      _country.value = AsyncState.loading();

      await Future.delayed(const Duration(seconds: 2));

      final Country country = await _homeRepository.fetchCountry(name: name ?? _kDefaultCountry);

      _country.value = AsyncData(country);
    } catch (error, stackTrace) {
      _country.value = AsyncError(error, stackTrace);
    }
  }
}
