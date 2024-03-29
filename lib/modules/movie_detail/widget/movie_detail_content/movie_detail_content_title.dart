import 'package:app_filmes/models/movie_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:app_filmes/application/ui/theme_extensions.dart';

class MovieDetailContentTitle extends StatelessWidget {

  final MovieDetailModel? movie;
  const MovieDetailContentTitle({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Text(
            movie?.title ?? '',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600
            ),
          ),
          SizedBox(height: 10,),
          RatingStars(
            value: (movie?.stars ?? 1) / 2,
            starColor: context.themeOrange,
            starSize: 14,
          ),
          SizedBox(height: 10,),
          Text(
              movie?.genres.map((e) => e.name).join(', ') ?? '', //Lista de nomes colocando uma lista
            style: TextStyle(
              fontSize: 11,
              color: context.themeGrey
            ),
          ),
        ],
      ),
    );
  }
}
