import 'package:provider_example/src/features/home/domain/entity/country_entity.dart';

abstract class HomeRepository {
  Future<Country> fetchCountry({required String name});
}
