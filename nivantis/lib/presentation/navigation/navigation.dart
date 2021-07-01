import 'package:get/get.dart';
import 'routes.dart';

import '../views.exports.dart' as views;

class Nav {
  
  static List<GetPage> routes = [
    GetPage(
      name: Routes.VERSION1,
      page: () => views.Version1View(),
      binding: views.Version1ViewControllerBindings(),
    ),
    GetPage(
      name: Routes.VERSION2,
      page: () => views.Version2View(),
      binding: views.Version2ViewControllerBindings(),
    ),
    GetPage(
      name: Routes.VERSION3,
      page: () => views.Version3View(),
      binding: views.Version3ViewControllerBindings(),
    ),
  ];
}
