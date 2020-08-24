// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:nex_movie_app/core/injection_third_party/injection_third_party.dart';
import 'package:http/src/client.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:nex_movie_app/auth/core/injection/third_party_injection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:nex_movie_app/auth/infrastructure/auth_facade_impl.dart';
import 'package:nex_movie_app/auth/domain/i_auth_facade.dart';
import 'package:nex_movie_app/core/network/network_info.dart';
import 'package:nex_movie_app/movies/data/remote_data_source.dart';
import 'package:nex_movie_app/auth/application/sign_in_bloc/signinform_bloc.dart';
import 'package:nex_movie_app/auth/application/auth_bloc/auth_bloc.dart';
import 'package:nex_movie_app/movies/data/repository_imp.dart';
import 'package:nex_movie_app/movies/domain/repository_interface.dart';
import 'package:nex_movie_app/movies/provider/get_movie_of_genre.dart';
import 'package:nex_movie_app/movies/provider/now_playing_provider.dart';
import 'package:nex_movie_app/movies/provider/populars_provider.dart';
import 'package:nex_movie_app/movies/provider/search_provider.dart';
import 'package:nex_movie_app/movies/provider/top_rated_provider.dart';
import 'package:nex_movie_app/movies/provider/trending_provider.dart';
import 'package:nex_movie_app/movies/provider/favorites_movies/favoritesmovies_bloc.dart';
import 'package:nex_movie_app/movies/provider/get_cast_provider.dart';
import 'package:nex_movie_app/movies/provider/get_genre_provider.dart';
import 'package:nex_movie_app/movies/provider/get_person_provider.dart';
import 'package:nex_movie_app/movies/provider/get_video_response_provider.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final moviesInjectableModule = _$MoviesInjectableModule();
  final thirdPartyInjectableModule = _$ThirdPartyInjectableModule();
  g.registerLazySingleton<Client>(() => moviesInjectableModule.httpClient);
  g.registerLazySingleton<DataConnectionChecker>(
      () => moviesInjectableModule.dataConnectionChecker);
  g.registerLazySingleton<FirebaseAuth>(
      () => thirdPartyInjectableModule.firebaseAuth);
  g.registerLazySingleton<Firestore>(() => moviesInjectableModule.firebaseAuth);
  g.registerLazySingleton<GoogleSignIn>(
      () => thirdPartyInjectableModule.googleSignIn);
  g.registerLazySingleton<IAuthFacade>(
      () => AuthFacadeImpl(g<FirebaseAuth>(), g<GoogleSignIn>()));
  g.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(g<DataConnectionChecker>()));
  g.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImpl(g<Client>()));
  g.registerFactory<SigninformBloc>(() => SigninformBloc(g<IAuthFacade>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
  g.registerLazySingleton<IMovieAppRepository>(() => MoviesAppRepositoryImpl(
        remoteDataSource: g<RemoteDataSource>(),
        networkInfo: g<NetworkInfo>(),
        firestore: g<Firestore>(),
      ));
  g.registerFactory<MovieOfGenreProvider>(
      () => MovieOfGenreProvider(repository: g<IMovieAppRepository>()));
  g.registerFactory<NowPlayingProvider>(
      () => NowPlayingProvider(repository: g<IMovieAppRepository>()));
  g.registerFactory<PopularsProvider>(
      () => PopularsProvider(repository: g<IMovieAppRepository>()));
  g.registerFactory<SearchProvider>(
      () => SearchProvider(repository: g<IMovieAppRepository>()));
  g.registerFactory<TopRatedProvider>(
      () => TopRatedProvider(repository: g<IMovieAppRepository>()));
  g.registerFactory<TrendingProvider>(
      () => TrendingProvider(repository: g<IMovieAppRepository>()));
  g.registerFactory<FavoritesmoviesBloc>(
      () => FavoritesmoviesBloc(g<IMovieAppRepository>()));
  g.registerFactory<GetCastProvider>(
      () => GetCastProvider(g<IMovieAppRepository>()));
  g.registerFactory<GetGenreProvider>(
      () => GetGenreProvider(g<IMovieAppRepository>()));
  g.registerFactory<GetPersonProvider>(
      () => GetPersonProvider(g<IMovieAppRepository>()));
  g.registerFactory<GetVideoReponseProvider>(
      () => GetVideoReponseProvider(g<IMovieAppRepository>()));
}

class _$MoviesInjectableModule extends MoviesInjectableModule {}

class _$ThirdPartyInjectableModule extends ThirdPartyInjectableModule {}
