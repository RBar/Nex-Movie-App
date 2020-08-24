import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:nex_movie_app/core/errors/failures.dart';
import 'package:nex_movie_app/movies/domain/entities/genre_entity.dart';
import 'package:nex_movie_app/movies/provider/get_genre_provider.dart';
import 'package:nex_movie_app/movies/ui/helpers/color_pallete.dart';

import '../../../injection.dart';

class GenreCard extends StatelessWidget {
  final int genreId;

  const GenreCard({Key key, this.genreId}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final provider = getIt<GetGenreProvider>();
    return FutureBuilder<dartz.Either<Failure, Genre>>(
        future: provider.getGenre(genreId),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return snapshot.data.fold(
                (l) => Container() //TODO CHANGE THIS
                ,
                (genre) => Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: kDefaultPadding),
                      padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                        vertical:
                            kDefaultPadding / 4, // 5 padding top and bottom
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        genre.name,
                        style: TextStyle(
                            color: kTextColor.withOpacity(0.8), fontSize: 16),
                      ),
                    ));
          }
          return Container();
        });
  }
}
