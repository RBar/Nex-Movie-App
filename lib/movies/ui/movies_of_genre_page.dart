import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nex_movie_app/auth/application/auth_bloc/auth_bloc.dart';

import 'package:nex_movie_app/core/errors/failures.dart';

import 'package:nex_movie_app/injection.dart';
import 'package:nex_movie_app/movies/domain/entities/genre_entity.dart';
import 'package:nex_movie_app/movies/domain/entities/movie_entity.dart';
import 'package:nex_movie_app/movies/provider/favorites_movies/favoritesmovies_bloc.dart';
import 'package:nex_movie_app/movies/provider/get_movie_of_genre.dart';

import 'package:nex_movie_app/movies/ui/shared_widgets/list_view_trending_genrepage_tile.dart';
import 'package:nex_movie_app/movies/ui/shared_widgets/message_display.dart';

import 'helpers/color_pallete.dart';

class MoviesOfGenrePage extends StatefulWidget {
  final Genre genre;

  const MoviesOfGenrePage({Key key, @required this.genre}) : super(key: key);

  @override
  _MoviesOfGenrePageState createState() => _MoviesOfGenrePageState();
}

class _MoviesOfGenrePageState extends State<MoviesOfGenrePage> {
  ScrollController _controller;
  int _page;
  final MovieOfGenreProvider provider = getIt<MovieOfGenreProvider>();
  @override
  void initState() {
    _controller = ScrollController();
    _page = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FavoritesmoviesBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Category: ${widget.genre.name}'),
          elevation: 0,
        ),
        body: _streamBuilder(),
      ),
    );
  }

  Widget _streamBuilder() {
    if (_page == 1) {
      provider.getMovieOfGenreSink(_page, widget.genre.id);
      _page++;
    }
    return StreamBuilder<dartz.Either<Failure, List<Movie>>>(
      stream: provider.getMovieOfGenreStream,
      builder: (context, snapshot) {
        final Size size = MediaQuery.of(context).size;
        if (snapshot.hasData) {
          return _listview(snapshot.data);
        }
        return Container(
            height: size.height * 0.5,
            width: size.width,
            child: Center(
                child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                        ColorPallete().purple1))));
      },
    );
  }

  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification &&
        _controller.position.extentAfter == 0 &&
        _page != 2) {
      provider.getMovieOfGenreSink(_page, widget.genre.id);
      _page++;
      setState(() {});
    } else if (notification is ScrollEndNotification && _page == 2) {
      provider.getMovieOfGenreSink(_page, widget.genre.id);
      _page++;
    }
    return false;
  }

  Widget _buildLoaderListItem() {
    return Center(
      child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(ColorPallete().purple1)),
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
                      loaded: (state3) =>
                          NotificationListener<ScrollNotification>(
                        onNotification: _handleScrollNotification,
                        child: ListView.builder(
                          controller: _controller,
                          shrinkWrap: true,
                          itemCount: movieList.length,
                          itemBuilder: (BuildContext _, int index) {
                            if (index >= movieList.length) {
                              return _buildLoaderListItem();
                            } else {
                              return state2.map(
                                  initial: (_) {
                                    context.bloc<FavoritesmoviesBloc>().add(
                                        FavoritesmoviesEvent.getFavoritesMovies(
                                            user: state.user));
                                    return Container();
                                  },
                                  loaded: (state3) => Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: ListViewTrendingAndGenrePageTile(
                                          favoriteMovieList:
                                              state3.favoriteMovieList,
                                          movie: movieList[index],
                                          user: state.user,
                                        ),
                                      ),
                                  error: (state) => const MessageDisplay(
                                      message: '', selectedpage: 1));
                            }
                          },
                        ),
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
}
