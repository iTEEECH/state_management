import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_example/src/features/home/home.dart';

class HomeImage extends GetView<HomeController> {
  const HomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    // Instance.
    final HomeController controller = Get.find();

    // Content.
    return Center(
      child: SizedBox.square(
        dimension: 240.0,
        child: controller.obx(
          onError: (error) => Text('$error'),
          onLoading: CircularProgressIndicator.adaptive(),
          (state) => Image.network(state!.flag),
          onEmpty: const SizedBox.shrink(),
        ),
      ),
    );
  }
}
