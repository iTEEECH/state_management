import 'package:get_example/src/features/home/home.dart';

abstract class HomeRepository {
  Future<Country> fetchCountry({required String name});
}
