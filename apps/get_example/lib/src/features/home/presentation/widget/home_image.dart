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
    return SizedBox.square(
      dimension: 240.0,
      child: controller.obx(
        (state) {
          return Image.network(state!.flag);
        },
        onLoading: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
        onError: (_) => const Center(
          child: Text('Error occurred.'),
        ),
        onEmpty: const SizedBox.shrink(),
      ),
    );
  }
}
