import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_example/src/features/home/home.dart';

final class HomeRepositoryImpl implements HomeRepository {
  /// Used by providers to interact with other providers
  /// and the life-cycles of the application.
  final Ref _ref;

  const HomeRepositoryImpl({required Ref ref}) : _ref = ref;

  @override
  Future<Country> fetchCountry({required String name}) async {
    final CountryModel result = await _ref.read(homeRemoteProvider).fetchCountry(name);
    return result.toEntity();
  }
}
