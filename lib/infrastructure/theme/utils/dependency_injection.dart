import 'package:flutter_application_1/presentation/network/controllers/network.controller.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static void init() async {
    Get.put<NetworkController>(NetworkController(), permanent: true);
  }
}
