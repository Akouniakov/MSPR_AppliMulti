
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivantis/presentation/views/version1/version1_view_controller.dart';

class Version2View extends GetView<Version1ViewController> {
  Version2View({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Page 2"),
    );
  }
}

