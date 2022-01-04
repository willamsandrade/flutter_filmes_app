import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favoritos'),
        automaticallyImplyLeading: false, //Não colocar botão de voltar
      ),
      body: Container(
        child: Center(
          child: Text('Favoritos'),
        ),
      ),
    );
  }
}
