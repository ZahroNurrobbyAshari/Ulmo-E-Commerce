import 'package:get/get.dart';

import '../../../../presentation/unknown/controllers/unknown.controller.dart';

class UnknownControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UnknownController>(
      () => UnknownController(),
    );
  }
}
