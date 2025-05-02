import 'package:get/get.dart';
import 'package:get_example/src/features/home/home.dart';

class HomeController extends GetxController with StateMixin<Country> {
  final HomeRepository _repository;

  static const _kDefaultCountryName = 'France';

  HomeController({required HomeRepository repository})
      : _repository = repository;

  @override
  void onInit() {
    super.onInit();
    fetchCountry();
  }

  Future<void> fetchCountry({String? name}) async {
    try {
      change(null, status: RxStatus.loading());

      await Future.delayed(const Duration(seconds: 2));

      final Country country = await _repository.fetchCountry(
        name: name ?? _kDefaultCountryName,
      );

      change(country, status: RxStatus.success());
    } catch (error) {
      change(null, status: RxStatus.error(error.toString()));
    }
  }
}
