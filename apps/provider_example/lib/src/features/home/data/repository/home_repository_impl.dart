import 'package:provider_example/src/features/home/home.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemote _remote;

  HomeRepositoryImpl({required HomeRemote remote}) : _remote = remote;

  @override
  Future<Country> fetchCountry({required String name}) async {
    final CountryModel result = await _remote.fetchCountry(name);
    return result.toEntity();
  }
}
