import 'package:signals_example/src/features/home/home.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setup() {
  /// In order to inject dependencies, use
  /// Get It : https://pub.dev/packages/git_it
  /// or
  /// lite_ref : https://pub.dev/packages/lite_ref
  final HomeRemote homeRemote = getIt.registerSingleton(HomeRemoteImpl());

  final HomeRepository homeRepository = getIt.registerSingleton(HomeRepositoryImpl(remote: homeRemote));

  getIt.registerSingleton(HomeController(homeRepository));
}
