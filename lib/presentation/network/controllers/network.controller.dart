// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/infrastructure/theme/utils/colors.dart';
import 'package:flutter_application_1/infrastructure/theme/utils/size.dart';
import 'package:get/get.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkController extends GetxController {
  final Connectivity _connectivity = Connectivity();
  late ConnectivityResult _connectivityResult;
  late StreamSubscription<ConnectivityResult> _streamSubscription;

  @override
  void onInit() {
    super.onInit();

    initConnectivity();
    _streamSubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  Future<void> initConnectivity() async {
    _connectivityResult = await _connectivity.checkConnectivity();
    print(_connectivityResult);
  }

  void _updateConnectionStatus(ConnectivityResult connectivityResult) {
    if (kDebugMode) print("STATUS :" + connectivityResult.toString());

    if (connectivityResult == ConnectivityResult.none) {
      Get.rawSnackbar(
          shouldIconPulse: false,
          animationDuration: Duration(milliseconds: 200),
          instantInit: true,
          borderRadius: getProportionateScreenWidth(8),
          snackPosition: SnackPosition.TOP,
          titleText: Text(
            "No Connection",
            style: TextStyle(
              color: CollorPallete.white,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins",
              fontSize: 14,
            ),
          ),
          messageText: Text(
            "Check your Internet",
            style: TextStyle(
              color: CollorPallete.white,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins",
              fontSize: 10,
            ),
          ),
          isDismissible: false,
          duration: const Duration(days: 1),
          backgroundColor: CollorPallete.magikap400,
          icon: Icon(
            Icons.remove_circle_outline,
            color: CollorPallete.white,
          ),
          margin: EdgeInsets.only(
            left: getProportionateScreenWidth(16),
            right: getProportionateScreenWidth(16),
            top: getProportionateScreenHeight(4),
          ),
          mainButton: TextButton(
              onPressed: () {},
              child: Text(
                "Retry",
                style: TextStyle(
                  color: CollorPallete.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                  fontSize: 10,
                ),
              )),
          snackStyle: SnackStyle.FLOATING);
    } else {
      if (Get.isSnackbarOpen) {
        Get.closeCurrentSnackbar();
      }
    }
  }

  @override
  void onClose() {
    _streamSubscription.cancel();
  }
}
