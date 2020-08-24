import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:like_button/like_button.dart';
import 'package:nex_movie_app/auth/domain/user.dart';
import 'package:nex_movie_app/movies/domain/entities/movie_entity.dart';
import 'package:nex_movie_app/movies/provider/favorites_movies/favoritesmovies_bloc.dart';
import 'package:nex_movie_app/movies/ui/helpers/color_pallete.dart';

class TitleDurationAndFabBtn extends StatelessWidget {
  final User user;
  const TitleDurationAndFabBtn(
      {Key key, @required this.movie, @required this.user})
      : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesmoviesBloc, FavoritesmoviesState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      movie.title,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const SizedBox(height: kDefaultPadding / 2),
                    Row(
                      children: <Widget>[
                        Text(
                          "Release date: ${movie.releaseDate}",
                          style: const TextStyle(color: kTextLightColor),
                        ),
                        const SizedBox(width: kDefaultPadding),
                        const SizedBox(width: kDefaultPadding),
                      ],
                    )
                  ],
                ),
              ),
              state.map(
                  initial: (_) {
                    context.bloc<FavoritesmoviesBloc>().add(
                        FavoritesmoviesEvent.getFavoritesMovies(user: user));
                    return Container();
                  },
                  loaded: (state) {
                    final favoriteMovieList = state.favoriteMovieList;
                    return Column(
                      children: <Widget>[
                        AnimatedContainer(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                              color: favoriteMovieList.contains(movie)
                                  ? kSecondaryColor
                                  : ColorPallete().purple1,
                              borderRadius: BorderRadius.circular(20)),
                          duration: const Duration(milliseconds: 200),
                          child: LikeButton(
                            size: 28,
                            circleColor: CircleColor(
                                start: ColorPallete().purple1,
                                end: kSecondaryColor),
                            bubblesColor: const BubblesColor(
                              dotPrimaryColor: kSecondaryColor,
                              dotSecondaryColor: kSecondaryColor,
                            ),
                            likeBuilder: (bool isLiked) {
                              return isLiked
                                  ? Icon(FontAwesomeIcons.check,
                                      color: Colors.white, size: 20.0)
                                  : Icon(
                                      Icons.add,
                                      size: 28,
                                      color: Colors.white,
                                    );
                            },
                            isLiked: favoriteMovieList.contains(movie),
                            onTap: (_) {
                              if (favoriteMovieList.contains(movie)) {
                                context.bloc<FavoritesmoviesBloc>().add(
                                    FavoritesmoviesEvent.deleteFavoriteMovie(
                                        user: user, movie: movie));
                                return Future.delayed(
                                    const Duration(milliseconds: 100),
                                    () => false);
                              } else {
                                context.bloc<FavoritesmoviesBloc>().add(
                                    FavoritesmoviesEvent.addFavoriteMovie(
                                        user: user, movie: movie));
                                return Future.delayed(
                                    const Duration(milliseconds: 100),
                                    () => true);
                              }
                            },
                          ),
                        ),
                      ],
                    );
                  },
                  error: (_) =>
                      const Icon(FontAwesomeIcons.exclamationTriangle))
            ],
          ),
        );
      },
    );
  }
}
