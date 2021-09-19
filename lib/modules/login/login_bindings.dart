import 'package:app_filmes/modules/login/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController(loginService: Get.find()));
  }

}