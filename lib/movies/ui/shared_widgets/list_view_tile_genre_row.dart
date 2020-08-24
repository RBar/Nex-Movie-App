import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:nex_movie_app/core/errors/failures.dart';
import 'package:nex_movie_app/movies/domain/entities/genre_entity.dart';
import 'package:nex_movie_app/movies/provider/get_genre_provider.dart';
import 'package:nex_movie_app/movies/ui/helpers/color_pallete.dart';

import '../../../injection.dart';

class ListViewTileGenreRow extends StatelessWidget {
  final List<int> genresList;
  const ListViewTileGenreRow({Key key, @required this.genresList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> genresNames = [];
    int _counter = 1;
    for (final genre in genresList) {
      genresNames.add(_GenreTile(
        genreId: genre,
      ));
      if (_counter == 4) {
        break;
      }
      if (_counter != genresList.length) {
        genresNames.add(Text(
          '/',
          style: TextStyle(color: ColorPallete().genreGrey),
        ));
      }
      _counter++;
    }
    return Wrap(
      children: genresNames,
    );
  }
}

class _GenreTile extends StatelessWidget {
  final int genreId;
  const _GenreTile({Key key, @required this.genreId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = getIt<GetGenreProvider>();
    return FutureBuilder<dartz.Either<Failure, Genre>>(
      future: provider.getGenre(genreId),
      builder: (BuildContext context, snapshot) {
        if (snapshot.hasData) {
          return snapshot.data.fold(
              (l) => Container(),
              (genre) => Text(
                    genre.name,
                    style: TextStyle(
                        fontSize: 14.0, color: ColorPallete().genreGrey),
                  ));
        }
        return Container();
      },
    );
  }
}
