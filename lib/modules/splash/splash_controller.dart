import 'package:get/get.dart';

class SplashController extends GetxController{

  @override
  void onReady() { //Depois de carregado executar uma ação
    // TODO: implement onReady
    super.onReady();
    Get.offAllNamed('/login'); //remover pilha e ir para outro
  }

}