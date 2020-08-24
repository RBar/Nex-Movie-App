// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:nex_movie_app/auth/presentation/splash_page.dart';
import 'package:nex_movie_app/auth/presentation/sign_in/sign_in_page.dart';
import 'package:nex_movie_app/auth/presentation/sign_up/sign_up_page.dart';
import 'package:nex_movie_app/auth/presentation/initial_page.dart';
import 'package:nex_movie_app/movies/ui/home_page.dart';
import 'package:nex_movie_app/auth/presentation/forgot_password/forgot_password_page.dart';
import 'package:nex_movie_app/movies/ui/main_tab.dart';
import 'package:nex_movie_app/movies/ui/movie_detail_page.dart';
import 'package:nex_movie_app/movies/domain/entities/movie_entity.dart';
import 'package:nex_movie_app/auth/domain/user.dart';
import 'package:nex_movie_app/movies/ui/movies_of_genre_page.dart';
import 'package:nex_movie_app/movies/domain/entities/genre_entity.dart';
import 'package:nex_movie_app/movies/ui/details_widgets/trailer_player.dart';
import 'package:nex_movie_app/movies/domain/entities/movie_video_response.dart';

abstract class Routes {
  static const splashPage = '/';
  static const signInPage = '/sign-in-page';
  static const signUpPage = '/sign-up-page';
  static const initialPage = '/initial-page';
  static const homePage = '/home-page';
  static const forgotPasswordPage = '/forgot-password-page';
  static const mainTab = '/main-tab';
  static const movieDetail = '/movie-detail';
  static const moviesOfGenrePage = '/movies-of-genre-page';
  static const trailerVideoPlayer = '/trailer-video-player';
  static const all = {
    splashPage,
    signInPage,
    signUpPage,
    initialPage,
    homePage,
    forgotPasswordPage,
    mainTab,
    movieDetail,
    moviesOfGenrePage,
    trailerVideoPlayer,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.splashPage:
        if (hasInvalidArgs<SplashPageArguments>(args)) {
          return misTypedArgsRoute<SplashPageArguments>(args);
        }
        final typedArgs = args as SplashPageArguments ?? SplashPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => SplashPage(key: typedArgs.key),
          settings: settings,
        );
      case Routes.signInPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignInPage(),
          settings: settings,
        );
      case Routes.signUpPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignUpPage(),
          settings: settings,
        );
      case Routes.initialPage:
        if (hasInvalidArgs<InitialPageArguments>(args)) {
          return misTypedArgsRoute<InitialPageArguments>(args);
        }
        final typedArgs =
            args as InitialPageArguments ?? InitialPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => InitialPage(key: typedArgs.key),
          settings: settings,
        );
      case Routes.homePage:
        if (hasInvalidArgs<HomePageArguments>(args)) {
          return misTypedArgsRoute<HomePageArguments>(args);
        }
        final typedArgs = args as HomePageArguments ?? HomePageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => HomePage(key: typedArgs.key),
          settings: settings,
        );
      case Routes.forgotPasswordPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => ForgotPasswordPage(),
          settings: settings,
        );
      case Routes.mainTab:
        if (hasInvalidArgs<MainTabArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<MainTabArguments>(args);
        }
        final typedArgs = args as MainTabArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) =>
              MainTab(key: typedArgs.key, selectedTab: typedArgs.selectedTab),
          settings: settings,
        );
      case Routes.movieDetail:
        if (hasInvalidArgs<MovieDetailArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<MovieDetailArguments>(args);
        }
        final typedArgs = args as MovieDetailArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => MovieDetail(
              key: typedArgs.key,
              movie: typedArgs.movie,
              user: typedArgs.user,
              selectedTab: typedArgs.selectedTab),
          settings: settings,
        );
      case Routes.moviesOfGenrePage:
        if (hasInvalidArgs<MoviesOfGenrePageArguments>(args,
            isRequired: true)) {
          return misTypedArgsRoute<MoviesOfGenrePageArguments>(args);
        }
        final typedArgs = args as MoviesOfGenrePageArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) =>
              MoviesOfGenrePage(key: typedArgs.key, genre: typedArgs.genre),
          settings: settings,
        );
      case Routes.trailerVideoPlayer:
        if (hasInvalidArgs<TrailerVideoPlayerArguments>(args,
            isRequired: true)) {
          return misTypedArgsRoute<TrailerVideoPlayerArguments>(args);
        }
        final typedArgs = args as TrailerVideoPlayerArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => TrailerVideoPlayer(
              key: typedArgs.key, videoResponse: typedArgs.videoResponse),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//SplashPage arguments holder class
class SplashPageArguments {
  final Key key;
  SplashPageArguments({this.key});
}

//InitialPage arguments holder class
class InitialPageArguments {
  final Key key;
  InitialPageArguments({this.key});
}

//HomePage arguments holder class
class HomePageArguments {
  final Key key;
  HomePageArguments({this.key});
}

//MainTab arguments holder class
class MainTabArguments {
  final Key key;
  final int selectedTab;
  MainTabArguments({this.key, @required this.selectedTab});
}

//MovieDetail arguments holder class
class MovieDetailArguments {
  final Key key;
  final Movie movie;
  final User user;
  final int selectedTab;
  MovieDetailArguments(
      {this.key,
      @required this.movie,
      @required this.user,
      @required this.selectedTab});
}

//MoviesOfGenrePage arguments holder class
class MoviesOfGenrePageArguments {
  final Key key;
  final Genre genre;
  MoviesOfGenrePageArguments({this.key, @required this.genre});
}

//TrailerVideoPlayer arguments holder class
class TrailerVideoPlayerArguments {
  final Key key;
  final MovieVideoResponse videoResponse;
  TrailerVideoPlayerArguments({this.key, @required this.videoResponse});
}
