import 'package:app_filmes/modules/home/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => HomeController(loginService: Get.find()), fenix: true);
  }

}