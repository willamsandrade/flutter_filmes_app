import 'package:app_filmes/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
              'assets/images/background.png',
            width: Get.width,
            height: Get.height,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.4), //Fundo com transparência
          ),
          Padding(
              padding: EdgeInsets.only(top: 80.0),
            child: Column(
              children: [
                Image.asset('assets/images/logo.png'),
                SizedBox(height: 50,),
                SizedBox(
                  width: Get.width * .9,
                  height: 42,
                  child: SignInButton(
                    Buttons.Google,
                    text: "Entrar com o google",
                    onPressed: () => controller.login(),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100) 
                    ),
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
