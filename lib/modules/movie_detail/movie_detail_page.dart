import 'package:app_filmes/modules/movie_detail/movie_detail_controller.dart';
import 'package:app_filmes/modules/movie_detail/widget/movie_detail_content/movie_detail_content.dart';
import 'package:app_filmes/modules/movie_detail/widget/movie_detail_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MovieDetailPage extends GetView<MovieDetailController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhe'),
      ),
      body: SingleChildScrollView(
        child: Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MovieDetailHeader(movie: controller.movie.value),
                MovieDetailContent(movie: controller.movie.value),
              ],
            )
        ),
      ),
    );
  }
}