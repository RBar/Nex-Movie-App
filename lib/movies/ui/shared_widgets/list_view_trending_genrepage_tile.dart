import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:like_button/like_button.dart';
import 'package:nex_movie_app/auth/domain/user.dart';
import 'package:nex_movie_app/core/routes/router.gr.dart';
import 'package:nex_movie_app/movies/domain/entities/movie_entity.dart';
import 'package:nex_movie_app/movies/provider/favorites_movies/favoritesmovies_bloc.dart';
import 'package:nex_movie_app/movies/ui/helpers/color_pallete.dart';
import 'package:nex_movie_app/movies/ui/helpers/movies_images.dart';
import 'package:nex_movie_app/movies/ui/shared_widgets/rating_stars.dart';

import 'list_view_tile_genre_row.dart';

class ListViewTrendingAndGenrePageTile extends StatelessWidget {
  final Movie movie;
  final List<Movie> favoriteMovieList;
  final User user;
  const ListViewTrendingAndGenrePageTile(
      {Key key,
      @required this.movie,
      @required this.favoriteMovieList,
      @required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListTile(
        title: Container(
      width: size.width,
      height: 200,
      child: Row(
        children: [
          Stack(
            children: <Widget>[
              InkWell(
                onTap: () {
                  ExtendedNavigator.of(context).pushNamed(Routes.movieDetail,
                      arguments: MovieDetailArguments(
                          movie: movie, user: user, selectedTab: 1));
                },
                child: Container(
                  width: 150,
                  height: 200,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: FadeInImage(
                      placeholder: const AssetImage('assets/no-image.jpg'),
                      image: NetworkImage(
                          MovieImage().getPosterImg(movie.posterPath)),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              BlocBuilder<FavoritesmoviesBloc, FavoritesmoviesState>(
                builder: (context, state) {
                  return Positioned(
                      right: 5,
                      bottom: 5,
                      child: LikeButton(
                        circleColor: const CircleColor(
                            start: Colors.red, end: Colors.red),
                        bubblesColor: const BubblesColor(
                          dotPrimaryColor: Colors.red,
                          dotSecondaryColor: Colors.red,
                        ),
                        likeBuilder: (bool isLiked) {
                          return Icon(
                            FontAwesomeIcons.solidHeart,
                            color: isLiked ? Colors.red : Colors.grey,
                            size: 30,
                          );
                        },
                        isLiked: favoriteMovieList.contains(movie),
                        onTap: (_) {
                          if (favoriteMovieList.contains(movie)) {
                            context.bloc<FavoritesmoviesBloc>().add(
                                FavoritesmoviesEvent.deleteFavoriteMovie(
                                    user: user, movie: movie));
                            return Future.delayed(
                                const Duration(milliseconds: 100), () => false);
                          } else {
                            context.bloc<FavoritesmoviesBloc>().add(
                                FavoritesmoviesEvent.addFavoriteMovie(
                                    user: user, movie: movie));
                            return Future.delayed(
                                const Duration(milliseconds: 100), () => true);
                          }
                        },
                      ));
                },
              )
            ],
          ),
          const SizedBox(width: 20.0),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movie.title,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10.0,
              ),
              RatingStars(stars: movie.voteAverage),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                '${movie.voteAverage}/10 | ${movie.voteCount} votes',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: ColorPallete().greenVote),
              ),
              const SizedBox(
                height: 10.0,
              ),
              ListViewTileGenreRow(genresList: movie.genreIds),
            ],
          )),
        ],
      ),
    ));
  }
}
