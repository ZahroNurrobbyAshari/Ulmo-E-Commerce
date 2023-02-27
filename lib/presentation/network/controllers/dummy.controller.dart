import 'package:get/get.dart';
import 'package:connectivity/connectivity.dart';

class ConnectivityController extends GetxController {
  var hasInternet = false.obs;

  @override
  void onInit() {
    super.onInit();
    checkInternetConnection();
  }

  Future<void> checkInternetConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      hasInternet.value = true;
    } else {
      hasInternet.value = false;
    }
    Connectivity().onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        hasInternet.value = true;
      } else {
        hasInternet.value = false;
      }
    });
  }
}
