import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivantis/presentation/navigation/routes.dart';

Widget navAppBar() {
  return Row(
      children: <Widget>[
        ElevatedButton(
          child: Text("Version 1"), 
          onPressed: () {
            Get.toNamed(Routes.VERSION1);
          },
        ),
        Tab(
          child: Text("Version 2"),
        ),
        Tab(
          child: Text("Version 3"),
        ),
      ],
  );
}