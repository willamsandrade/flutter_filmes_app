import 'package:app_filmes/modules/favorites/favorite_controller.dart';
import 'package:get/get.dart';

class FavoriteBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(FavoriteController(
        moviesService: Get.find(),
        authService: Get.find())
    );
  }
}