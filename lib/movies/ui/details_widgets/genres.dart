import 'package:flutter/material.dart';
import 'package:nex_movie_app/movies/domain/entities/movie_entity.dart';
import 'package:nex_movie_app/movies/ui/helpers/color_pallete.dart';

import 'genre_card.dart';

class Genres extends StatelessWidget {
  const Genres({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: null,
        builder: (context, snapshot) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            child: SizedBox(
              height: 36,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movie.genreIds.length,
                itemBuilder: (context, index) => GenreCard(
                  genreId: movie.genreIds[index],
                ),
              ),
            ),
          );
        });
  }
}
