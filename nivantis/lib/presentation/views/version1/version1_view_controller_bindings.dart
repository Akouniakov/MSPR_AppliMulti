import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:nivantis/presentation/views/version1/version1_view_controller.dart';

class Version1ViewControllerBindings extends Bindings {
  @override
  void dependencies() {
      Get.lazyPut(() => Version1ViewController());
  }
}
