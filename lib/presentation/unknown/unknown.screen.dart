import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/unknown.controller.dart';

class UnknownScreen extends GetView<UnknownController> {
  const UnknownScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UnknownScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'UnknownScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
