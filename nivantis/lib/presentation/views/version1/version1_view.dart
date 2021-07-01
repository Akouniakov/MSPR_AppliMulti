
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivantis/presentation/views/version1/version1_view_controller.dart';

class Version1View extends GetView<Version1ViewController> {
  Version1View({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx(
        (state) =>               
        Container(
          child: Center(
            child: Text("Page 1"),
          ),
        ),
      ),
    );
  }
}

