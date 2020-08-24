import 'package:flutter/material.dart';
import 'package:nex_movie_app/auth/domain/user.dart';
import 'package:nex_movie_app/movies/domain/entities/movie_entity.dart';
import 'package:nex_movie_app/movies/ui/helpers/color_pallete.dart';

import 'backdrop_rating.dart';
import 'cast_and_crew.dart';
import 'genres.dart';
import 'title_duration_and_fav_btn.dart';

class Body extends StatelessWidget {
  final User user;
  final Movie movie;
  final int selectedTab;

  const Body(
      {Key key,
      @required this.movie,
      @required this.user,
      @required this.selectedTab})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    // it will provide us total height and width
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BackdropAndRating(size: size, movie: movie, selectedTab: selectedTab),
          const SizedBox(height: kDefaultPadding / 2),
          TitleDurationAndFabBtn(
            movie: movie,
            user: user,
          ),
          Genres(movie: movie),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2,
              horizontal: kDefaultPadding,
            ),
            child: Text(
              "Plot Summary",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              movie.overview,
              style: const TextStyle(
                color: Color(0xFF737599),
              ),
            ),
          ),
          CastAndCrew(
            movie: movie,
          ),
        ],
      ),
    );
  }
}
