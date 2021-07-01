import 'package:get/get.dart';

class Version1ViewController extends GetxController
    with StateMixin, SingleGetTickerProviderMixin {

  Version1ViewController();

  @override
  void onInit() {
    change(null, status: RxStatus.loading());
    super.onInit();
  }

  @override
  void onReady() async {
    change(null, status: RxStatus.success());
    super.onReady();
  }


}