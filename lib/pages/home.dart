import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/counterController.dart';

class HomePage extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [Text('click: ${counterController.counter.value}')],
    ));
  }
}
