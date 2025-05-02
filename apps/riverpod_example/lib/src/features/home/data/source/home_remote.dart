import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_example/src/features/home/home.dart';

part 'home_remote.g.dart';

@riverpod
HomeRemote homeRemote(Ref ref) => HomeRemoteImpl();

abstract class HomeRemote {
  Future<CountryModel> fetchCountry(String name);
}