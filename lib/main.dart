import 'package:flutter/material.dart';
import 'package:flutter_application_1/infrastructure/navigation/bindings/controllers/controllers_bindings.dart';
import 'package:flutter_application_1/infrastructure/theme/utils/dependency_injection.dart';
import 'package:get/get.dart';
import 'infrastructure/navigation/navigation.dart';
import 'infrastructure/navigation/routes.dart';

void main() async {
  var initialRoute = await Routes.initialRoute;
  runApp(Main(initialRoute));
  DependencyInjection.init();
}

class Main extends StatelessWidget {
  final String initialRoute;
  const Main(this.initialRoute, {super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      enableLog: true,
      debugShowCheckedModeBanner: false,
      initialRoute: initialRoute,
      initialBinding: SplashControllerBinding(),
      getPages: Nav.routes,
      unknownRoute: Nav.routes[2],
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'connectivity_controller.dart';

// class MyHomePage extends StatelessWidget {
//   final connectivityController = Get.put(ConnectivityController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Internet Connection Checker'),
//       ),
//       body: Center(
//         child: GetBuilder<ConnectivityController>(
//           builder: (_) {
//             if (_.hasInternet.value) {
//               return Text('Internet Connected');
//             } else {
//               return Text('No Internet Connection');
//             }
//           },
//         ),
//       ),
//     );
//   }
// }