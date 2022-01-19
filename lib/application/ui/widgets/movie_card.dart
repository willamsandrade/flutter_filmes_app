import 'package:app_filmes/application/ui/filmes_app_icons_icons.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 158,
      height: 280,
      padding: EdgeInsets.all(8),
      child: Stack(
        children: [
          Padding(
              padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    clipBehavior: Clip.antiAlias,
                    child: Image.network(
                      'https://br.web.img3.acsta.net/pictures/19/04/03/18/23/2539612.jpg',
                      width: 148,
                      height: 184,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Coringa',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  '2019',
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 70,
             right: -3,
              child: Material(
                elevation: 5,
                shape: CircleBorder(),
                clipBehavior: Clip.antiAlias,
                child: SizedBox(
                  height: 30,
                  child: IconButton(
                    iconSize: 13,
                    icon: Icon(
                      FilmesAppIcons.heart,
                      color: Colors.grey,
                    ),
                    onPressed: (){},
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}
