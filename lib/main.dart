import 'package:app_filmes/application/bindings/application_bindings.dart';
import 'package:app_filmes/application/ui/filmes_app_ui_config.dart';
import 'package:app_filmes/modules/login/login_module.dart';
import 'package:app_filmes/modules/splash/splash_module.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'modules/home/home_module.dart';

void main() async {
  //iniciar o flutter antes de iniciar o app
  WidgetsFlutterBinding.ensureInitialized();
  //iniciar o firebase
  await Firebase.initializeApp();
  //Utilizar o remote config - local onde está a chave api do filmesMb
  await RemoteConfig.instance.fetchAndActivate();
  //iniciar o app
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: AplicationBindings(),
      title: FilmesAppUiConfig.title,
      theme: FilmesAppUiConfig.theme,
      getPages: [
        ...SplashModule().routers, //3 pontos destruir o array e distruir
        ...LoginModule().routers,
        ...HomeModule().routers,
      ],
    );
  }
}

