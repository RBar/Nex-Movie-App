import 'package:auto_route/auto_route_annotations.dart';
import 'package:nex_movie_app/movies/ui/main_tab.dart';
import 'package:nex_movie_app/movies/ui/movie_detail_page.dart';
import 'package:nex_movie_app/movies/ui/movies_of_genre_page.dart';
import 'package:nex_movie_app/movies/ui/details_widgets/trailer_player.dart';

import '../../auth/presentation/forgot_password/forgot_password_page.dart';
import '../../auth/presentation/initial_page.dart';
import '../../auth/presentation/sign_in/sign_in_page.dart';
import '../../auth/presentation/sign_up/sign_up_page.dart';
import '../../auth/presentation/splash_page.dart';
import '../../movies/ui/home_page.dart';

// @MaterialAutoRouter(generateNavigationHelperExtension: true, routes: [
//   MaterialRoute(page: SplashPage, initial: true),
//   MaterialRoute(page: SignInPage, initial: false),
//   MaterialRoute(page: SignUpPage, initial: false),
//   MaterialRoute(page: InitialPage, initial: false),
//   MaterialRoute(page: HomePage, initial: false),
//   MaterialRoute(page: ForgotPasswordPage, initial: false),
//   MaterialRoute(page: MainTab, initial: false),
//   MaterialRoute(page: MovieDetail, initial: false),
//   MaterialRoute(page: MoviesOfGenrePage, initial: false),
//   MaterialRoute(page: TrailerVideoPlayer, initial: false),
// ])
// class $Router {}

@MaterialAutoRouter()
class $Router {
  @initial
  SplashPage splashPage;
  SignInPage signInPage;
  SignUpPage signUpPage;
  InitialPage initialPage;
  HomePage homePage;
  ForgotPasswordPage forgotPasswordPage;
  MainTab mainTab;
  MovieDetail movieDetail;
  MoviesOfGenrePage moviesOfGenrePage;
  TrailerVideoPlayer trailerVideoPlayer;
}
