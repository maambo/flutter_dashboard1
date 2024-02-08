import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard1/controllers/counterController.dart';
import 'package:get/get.dart';

class OtherScreen extends StatelessWidget {
  final CounterController _counterController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Center(
          child: Text(
              'Screen was clicked ${_counterController.counter.value} times'),
        ),
        SizedBox(height: 10),
        Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('open other Page')))
      ],
    ));
  }
}
