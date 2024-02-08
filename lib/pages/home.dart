import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard1/pages/other.dart';
import 'package:get/get.dart';

import '../controllers/counterController.dart';

class HomePage extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Column(
            children: [
              Center(
                child: Text('click: ${counterController.counter.value}'),
              ),
              SizedBox(height: 10),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(OtherScreen());
                    },
                    child: Text('open other Page')),
              ),
            ],
          )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            counterController.increment();
          },
          child: Icon(Icons.add)),
    );
  }
}
