import 'package:provider_example/src/features/home/home.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setup() {
  final HomeRemote homeRemote = getIt.registerSingleton(HomeRemoteImpl());

  final HomeRepository homeRepository = getIt.registerSingleton(HomeRepositoryImpl(remote: homeRemote));

  getIt.registerFactory(() => HomeProvider(homeRepository));
}
