import 'package:cubit_example/src/features/home/home.dart';

abstract class HomeRemote {
  Future<CountryModel> fetchCountry(String name);
}
