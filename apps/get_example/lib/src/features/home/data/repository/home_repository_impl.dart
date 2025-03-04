import 'package:get_example/src/features/home/home.dart';

final class HomeRepositoryImpl implements HomeRepository {
  final HomeRemote _remote;

  const HomeRepositoryImpl({required HomeRemote remote}) : _remote = remote;

  @override
  Future<Country> fetchCountry({required String name}) async{
    final CountryModel result = await _remote.fetchCountry(name);
    return result.toEntity();
  }
}