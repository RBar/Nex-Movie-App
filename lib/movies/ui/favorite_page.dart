import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nex_movie_app/auth/application/auth_bloc/auth_bloc.dart';
import 'package:nex_movie_app/auth/domain/user.dart';
import 'package:nex_movie_app/core/routes/router.gr.dart';
import 'package:nex_movie_app/movies/domain/entities/movie_entity.dart';
import 'package:nex_movie_app/movies/provider/favorites_movies/favoritesmovies_bloc.dart';
import 'package:nex_movie_app/movies/ui/helpers/movies_images.dart';
import 'package:nex_movie_app/movies/ui/shared_widgets/message_display.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
      return state.map(
          initial: (_) => Container(),
          authenticated: (state) {
            return BlocBuilder<FavoritesmoviesBloc, FavoritesmoviesState>(
                builder: (context, state2) {
              return state2.map(
                  initial: (_) {
                    context.bloc<FavoritesmoviesBloc>().add(
                        FavoritesmoviesEvent.getFavoritesMovies(
                            user: state.user));
                    return Container();
                  },
                  loaded: (state3) {
                    context.bloc<FavoritesmoviesBloc>().add(
                        FavoritesmoviesEvent.getFavoritesMovies(
                            user: state.user));
                    return Scaffold(
                      appBar: AppBar(
                        elevation: 0,
                        leading: Container(),
                        title: (state3.favoriteMovieList.isNotEmpty)
                            ? Text(
                                'Favorites: ${state3.favoriteMovieList.length}',
                                style: const TextStyle(fontSize: 24),
                              )
                            : const Text(
                                'Favorites',
                                style: TextStyle(fontSize: 24),
                              ),
                      ),
                      body: Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: SafeArea(
                              child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 40.0),
                              child: state3.favoriteMovieList.isNotEmpty
                                  ? Wrap(
                                      children: _wrapChildrens(
                                          state3.favoriteMovieList,
                                          context,
                                          state.user),
                                    )
                                  : _noFavoritesYet(context),
                            ),
                          ))),
                    );
                  },
                  error: (_) =>
                      const MessageDisplay(message: '', selectedpage: 2));
            });
          },
          unauthenticated: (_) => Container());
    });
  }

  Widget _noFavoritesYet(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.7,
      child: Center(
        child: Text(
          'You have no favorites yet',
          style: TextStyle(
              fontSize: 20,
              color: Colors.grey.withOpacity(0.8),
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  List<Widget> _wrapChildrens(
      List<Movie> movieList, BuildContext context, User user) {
    final List<Widget> widgetLit = [];
    for (final movie in movieList) {
      widgetLit.add(_image(movie, context, user));
    }
    return widgetLit;
  }

  Widget _image(Movie movie, BuildContext context, User user) {
    final Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(Routes.movieDetail,
            arguments:
                MovieDetailArguments(movie: movie, user: user, selectedTab: 2));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 3.0),
        width: size.width * 0.27,
        height: size.height * 0.22,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: FadeInImage(
            placeholder: const AssetImage('assets/no-image.jpg'),
            image: NetworkImage(MovieImage().getPosterImg(movie.posterPath)),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
