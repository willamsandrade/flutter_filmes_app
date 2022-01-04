import 'package:app_filmes/application/ui/loader/loader_mixin.dart';
import 'package:app_filmes/application/ui/messages/messages_mixin.dart';
import 'package:app_filmes/services/login/login_service.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with LoaderMixin, MessagesMixin{

  final LoginService _loginService;
  final loading = false.obs;
  final message = Rxn<MessageModel>();

  LoginController({
    required LoginService loginService
  }) : _loginService = loginService;
  
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loaderListener(loading); //Escutando para exibir circular progress
    messageListener(message); //Escutando para exiber Mensagem
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
  
  
  void login() async{

    try{
      loading(true); //Aparecer o dialog com circular
      await _loginService.login();
      loading(false); //Retira o dialog circular
      message(MessageModel.info(title: 'Sucesso', message: 'Login realizado com sucesso'));
    }on Exception catch (e, s){
      print(e);
      print(s);
      loading(false); //Retira o dialog circular
      message(MessageModel.error(title: 'Login Erro', message: 'Erro ao realizar login'));
    }


    await 2.seconds.delay(); //Espera 2 segundos



  }
}