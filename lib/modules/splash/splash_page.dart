import 'package:app_filmes/modules/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {

  const SplashPage({Key? key}) : super(key: key);

  //RemoteConfig.instance.getString('api_token')

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: Get.width,
          height: Get.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover
            )
          ),
          child: Image.asset('assets/images/logo.png'),
        ),
      ),
    );
  }
}
