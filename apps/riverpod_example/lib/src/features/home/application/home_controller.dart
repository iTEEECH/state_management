import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_example/src/features/home/home.dart';

part 'home_controller.g.dart';

@riverpod
class HomeController extends _$HomeController {
  static const _kDefaultCountryName = 'France';

  @override
  Future<Country?> build() async {
    return await fetchCountry();
  }

  Future<Country?> fetchCountry({String? name}) async {
    state = const AsyncLoading();

    Future.delayed(const Duration(seconds: 2));

    state = await AsyncValue.guard<Country>(() async {
      final Country country = await ref.read(homeRepositoryProvider).fetchCountry(name: name ?? _kDefaultCountryName);
      return country;
    });

    return state.value;
  }
}