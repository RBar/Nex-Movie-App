import 'package:flutter/material.dart';
import 'package:nex_movie_app/movies/domain/entities/cast_entity.dart';
import 'package:nex_movie_app/movies/ui/helpers/color_pallete.dart';
import 'package:nex_movie_app/movies/ui/helpers/movies_images.dart';

class CastCard extends StatelessWidget {
  final Cast cast;

  const CastCard({Key key, @required this.cast}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: kDefaultPadding),
      width: 80,
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(
                      MovieImage().getActorPhoto(cast.profilePath))),
            ),
          ),
          const SizedBox(height: kDefaultPadding / 2),
          Text(
            cast.name,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2,
            maxLines: 2,
          ),
          const SizedBox(height: kDefaultPadding / 4),
          Text(
            cast.character,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: const TextStyle(color: kTextLightColor),
          ),
        ],
      ),
    );
  }
}
