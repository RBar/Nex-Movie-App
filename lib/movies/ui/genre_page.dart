import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:nex_movie_app/core/routes/router.gr.dart';

import 'package:nex_movie_app/movies/ui/shared_widgets/message_display.dart';

import '../../core/errors/failures.dart';
import '../../injection.dart';
import '../domain/entities/genre_entity.dart';
import '../provider/get_genre_provider.dart';
import 'shared_widgets/loading_display.dart';

class GenrePage extends StatelessWidget {
  const GenrePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = getIt<GetGenreProvider>();
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Categories'),
        elevation: 0,
      ),
      body: FutureBuilder<dartz.Either<Failure, List<Genre>>>(
        future: provider.getAllGenre(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return snapshot.data.fold(
                (l) => const MessageDisplay(message: '', selectedpage: 1),
                (genreList) => ListView(
                      children: _listviewTiles(genreList, context),
                    ));
          }
          return const LoadingWidget();
        },
      ),
    );
  }

  List<Widget> _listviewTiles(List<Genre> genreList, BuildContext context) {
    final List<Widget> widgetList =
        genreList.map((genre) => _tile(genre, context)).toList();
    return widgetList;
  }

  Widget _tile(Genre genre, BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(Routes.moviesOfGenrePage,
          arguments: MoviesOfGenrePageArguments(genre: genre)),
      child: ListTile(
        title: Text(genre.name),
      ),
    );
  }
}
