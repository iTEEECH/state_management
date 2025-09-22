import 'package:get/get.dart';
import 'package:get_example/src/features/home/home.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeRemote>(() => HomeRemoteImpl());
    Get.lazyPut<HomeRepository>(() => HomeRepositoryImpl(remote: Get.find()));
    Get.lazyPut(() => HomeController(repository: Get.find()));
  }
}
