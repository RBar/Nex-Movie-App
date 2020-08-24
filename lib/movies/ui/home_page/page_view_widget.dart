import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:like_button/like_button.dart';
import 'package:nex_movie_app/auth/application/auth_bloc/auth_bloc.dart';
import 'package:nex_movie_app/auth/domain/user.dart';
import 'package:nex_movie_app/core/routes/router.gr.dart';
import 'package:nex_movie_app/movies/provider/favorites_movies/favoritesmovies_bloc.dart';
import 'package:nex_movie_app/movies/ui/helpers/color_pallete.dart';
import 'package:nex_movie_app/movies/ui/shared_widgets/message_display.dart';
import '../../../core/errors/failures.dart';
import '../../domain/entities/movie_entity.dart';
import '../helpers/movies_images.dart';

class PageViewWidget extends StatefulWidget {
  final Stream<dartz.Either<Failure, List<Movie>>> stream;
  final Future<void> Function(int) streamSink;

  const PageViewWidget(
      {Key key, @required this.stream, @required this.streamSink})
      : super(key: key);

  @override
  _PageViewWidgetState createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  PageController _controller;
  int _page;

  @override
  void initState() {
    _controller = PageController(viewportFraction: 0.55);
    _page = 1;
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.5,
      width: size.width,
      child: _streamBuilder(),
    );
  }

  Widget _streamBuilder() {
    if (_page == 1) {
      widget.streamSink(_page);
      _page++;
    }
    return StreamBuilder<dartz.Either<Failure, List<Movie>>>(
      stream: widget.stream,
      builder: (context, snapshot) {
        final Size size = MediaQuery.of(context).size;
        if (snapshot.hasData) {
          return _pageView(snapshot.data);
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

  Widget _pageView(dartz.Either<Failure, List<Movie>> snapshot) {
    return snapshot.fold(
        (l) => const MessageDisplay(message: '', selectedpage: 1),
        (movieList) =>
            BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
              return state.map(
                  initial: (_) => Container(),
                  authenticated: (state) {
                    return BlocBuilder<FavoritesmoviesBloc,
                        FavoritesmoviesState>(
                      builder: (context, state2) {
                        return NotificationListener<ScrollNotification>(
                          onNotification: _handleScrollNotification,
                          child: PageView.builder(
                            pageSnapping: false,
                            itemCount: movieList.length,
                            controller: _controller,
                            itemBuilder: (context, index) {
                              if (index >= movieList.length) {
                                return _buildLoaderListItem();
                              } else {
                                return state2.map(
                                    initial: (_) {
                                      context.bloc<FavoritesmoviesBloc>().add(
                                          FavoritesmoviesEvent
                                              .getFavoritesMovies(
                                                  user: state.user));
                                      return Container();
                                    },
                                    loaded: (state3) => Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: _pageViewCard(
                                            movieList[index],
                                            state.user,
                                            state3.favoriteMovieList)),
                                    error: (state) => const MessageDisplay(
                                        message: '', selectedpage: 1));
                              }
                            },
                          ),
                        );
                      },
                    );
                  },
                  unauthenticated: (_) => Container());
            }));
  }

  Widget _pageViewCard(Movie movie, User user, List<Movie> movieList) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        _image(movie, user),
        Positioned(
            right: _likeposition(),
            bottom: (size.height <= 600) ? 10 : 30,
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: LikeButton(
                  size: 30,
                  circleColor:
                      const CircleColor(start: Colors.red, end: Colors.red),
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
                  isLiked: movieList.contains(movie),
                  onTap: (_) {
                    if (movieList.contains(movie)) {
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
                ))),
      ],
    );
  }

  double _likeposition() {
    final deviceWidth = MediaQuery.of(context).size.shortestSide;
    print(deviceWidth);
    if (deviceWidth >= 900) {
      return deviceWidth * 0.144;
    } else if (deviceWidth > 350) {
      return 0;
    }
    return deviceWidth * 0.1;
  }

  Widget _image(Movie movie, User user) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
              color: Colors.black26, offset: Offset(0, 15), blurRadius: 13),
        ],
      ),
      child: InkWell(
        onTap: () {
          ExtendedNavigator.of(context).pushNamed(Routes.movieDetail,
              arguments: MovieDetailArguments(
                  movie: movie, user: user, selectedTab: 0));
        },
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

  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification &&
        _controller.position.extentAfter == 0 &&
        _page != 2) {
      widget.streamSink(_page);
      _page++;
      setState(() {});
    } else if (notification is ScrollEndNotification && _page == 2) {
      widget.streamSink(_page);
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
}
