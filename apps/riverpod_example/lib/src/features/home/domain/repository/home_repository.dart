import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_example/src/features/home/home.dart';

part 'home_repository.g.dart';

@riverpod
HomeRepository homeRepository(Ref ref) => HomeRepositoryImpl(ref: ref);

abstract class HomeRepository {
  Future<Country> fetchCountry({required String name});
}