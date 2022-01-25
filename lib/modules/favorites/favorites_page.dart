import 'package:app_filmes/application/ui/widgets/movie_card.dart';
import 'package:app_filmes/modules/favorites/favorite_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoritesPage extends GetView<FavoriteController> {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus Favoritos'),
        automaticallyImplyLeading: false, //Não colocar botão de voltar
      ),
      body: Container(
        child: Center(
          child: Obx(
              () => SingleChildScrollView(
                child: SizedBox(
                  width: Get.width,
                  child: Wrap(
                    alignment: WrapAlignment.spaceAround,
                    children: controller.movies.map((m) => MovieCard(
                        movie: m,
                        favoriteCallback: () => controller.removeFavorite(m)
                    )).toList(),
                  ),
                ),
              )
          ),
        ),
      ),
    );
  }
}
