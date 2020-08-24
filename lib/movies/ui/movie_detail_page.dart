import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nex_movie_app/auth/domain/user.dart';
import 'package:nex_movie_app/movies/domain/entities/movie_entity.dart';
import 'package:flutter/material.dart';
import 'package:nex_movie_app/movies/provider/favorites_movies/favoritesmovies_bloc.dart';

import '../../injection.dart';
import 'details_widgets/body.dart';

class MovieDetail extends StatefulWidget {
  final Movie movie;
  final User user;
  final int selectedTab;

  const MovieDetail(
      {Key key,
      @required this.movie,
      @required this.user,
      @required this.selectedTab})
      : super(key: key);

  @override
  _MovieDetailState createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FavoritesmoviesBloc>(
      create: (context) => getIt<FavoritesmoviesBloc>(),
      child: Scaffold(
        body: Body(
          selectedTab: widget.selectedTab,
          movie: widget.movie,
          user: widget.user,
        ),
      ),
    );
  }
}
