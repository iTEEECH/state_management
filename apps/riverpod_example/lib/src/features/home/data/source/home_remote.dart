import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_example/src/features/home/home.dart';

part 'home_remote.g.dart';

@Riverpod(keepAlive: true)
HomeRemote homeRemote(Ref ref) => HomeRemoteImpl();

abstract class HomeRemote {
  Future<CountryModel> fetchCountry(String name);
}
