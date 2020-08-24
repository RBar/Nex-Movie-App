import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nex_movie_app/auth/application/auth_bloc/auth_bloc.dart';
import 'package:nex_movie_app/auth/domain/user.dart';

import 'package:nex_movie_app/movies/provider/favorites_movies/favoritesmovies_bloc.dart';

import 'package:nex_movie_app/movies/ui/shared_widgets/list_view_trending_genrepage_tile.dart';
import 'package:nex_movie_app/movies/ui/shared_widgets/message_display.dart';

import '../../../core/errors/failures.dart';
import '../../../injection.dart';

import '../../domain/entities/movie_entity.dart';

import '../../provider/trending_provider.dart';
import '../helpers/color_pallete.dart';

class TrendingListView extends StatefulWidget {
  const TrendingListView({Key key}) : super(key: key);

  @override
  _TrendingListViewState createState() => _TrendingListViewState();
}

class _TrendingListViewState extends State<TrendingListView> {
  final TrendingProvider provider = getIt<TrendingProvider>();

  int _page = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _streamBuilder(),
    );
  }

  Widget _streamBuilder() {
    if (_page == 1) {
      provider.getTrendingSink(_page);
      _page++;
    }
    return StreamBuilder<dartz.Either<Failure, List<Movie>>>(
      stream: provider.getTrendingStream,
      builder: (BuildContext context, snapshot) {
        final size = MediaQuery.of(context).size;
        if (snapshot.hasData) {
          return _listview(snapshot.data);
        }
        return Container(
            height: 150,
            width: size.width,
            child: Center(
                child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                        ColorPallete().purple1)))); //TODO CHANGE COLOR
      },
    );
  }

  Widget _listview(dartz.Either<Failure, List<Movie>> snapshot) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            authenticated: (state) {
              return BlocBuilder<FavoritesmoviesBloc, FavoritesmoviesState>(
                builder: (context, state2) {
                  return snapshot.fold(
                      (l) => const MessageDisplay(
                          message: 'null', selectedpage: 1), (movieList) {
                    return state2.map(
                      initial: (_) {
                        context.bloc<FavoritesmoviesBloc>().add(
                            FavoritesmoviesEvent.getFavoritesMovies(
                                user: state.user));
                        return Container();
                      },
                      loaded: (state3) => ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: _lisviewChildrens(
                            movieList, state3.favoriteMovieList, state.user),
                      ),
                      error: (_) =>
                          const MessageDisplay(message: '', selectedpage: 1),
                    );
                  });
                },
              );
            },
            unauthenticated: (_) => Container());
      },
    );
  }

  List<Widget> _lisviewChildrens(
      List<Movie> movieList, List<Movie> favoriteMovieList, User user) {
    final List<Widget> widgetLit = [];
    for (final movie in movieList) {
      widgetLit.add(ListViewTrendingAndGenrePageTile(
        favoriteMovieList: favoriteMovieList,
        movie: movie,
        user: user,
      ));
    }

    return widgetLit;
  }
}
