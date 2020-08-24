import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:nex_movie_app/core/errors/exceptions.dart';
import 'package:nex_movie_app/movies/data/models/movie_model.dart';
import 'package:nex_movie_app/movies/domain/entities/movie_entity.dart';
import 'package:nex_movie_app/auth/domain/user.dart';
import 'package:nex_movie_app/movies/domain/entities/movie_video_response.dart';
import '../../core/errors/failures.dart';
import '../../core/network/network_info.dart';
import '../domain/entities/cast_entity.dart';
import '../domain/entities/genre_entity.dart';
import '../domain/entities/movie_response_entity.dart';
import '../domain/entities/person_entity.dart';
import '../domain/repository_interface.dart';
import 'models/cast_model.dart';
import 'models/genre_model.dart';
import 'models/movie_response_model.dart';
import 'models/person_model.dart';
import 'remote_data_source.dart';

@LazySingleton(as: IMovieAppRepository)
class MoviesAppRepositoryImpl implements IMovieAppRepository {
  final RemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;
  final Firestore firestore;

  MoviesAppRepositoryImpl(
      {@required this.remoteDataSource,
      @required this.networkInfo,
      @required this.firestore});

  @override
  Future<Either<Failure, CastResponse>> getCast(int movieId) async {
    try {
      final response = await _Getdata<CastResponseModel>()
          .getData(remoteDataSource.getCast(movieId), networkInfo);
      return response.fold((failure) => left(failure),
          (castResponseModel) => right(castResponseModel.toDomain()));
    } on ServerException catch (_) {
      return left(const Failure.serverFailure());
    } on UnexpectedException catch (_) {
      return left(const Failure.unexpectedFailure());
    } catch (e) {
      return left(const Failure.connectionFailure());
    }
  }

  @override
  Future<Either<Failure, List<Genre>>> getAllGenres() async {
    try {
      final response = await _Getdata<List<GenreModel>>()
          .getData(remoteDataSource.getAllGenres(), networkInfo);
      return response.fold(
          (failure) => left(failure),
          (genreModelList) => right(genreModelList
              .map((genreModel) => genreModel.toDomain())
              .toList()));
    } on ServerException catch (_) {
      return left(const Failure.serverFailure());
    } on UnexpectedException catch (_) {
      return left(const Failure.unexpectedFailure());
    } catch (e) {
      return left(const Failure.connectionFailure());
    }
  }

  @override
  Future<Either<Failure, Genre>> getGenre(int genreId) async {
    try {
      final response = await _Getdata<GenreModel>()
          .getData(remoteDataSource.getGenre(genreId), networkInfo);
      return response.fold((failure) => left(failure),
          (genreModel) => right(genreModel.toDomain()));
    } on ServerException catch (_) {
      return left(const Failure.serverFailure());
    } on UnexpectedException catch (_) {
      return left(const Failure.unexpectedFailure());
    } catch (e) {
      return left(const Failure.connectionFailure());
    }
  }

  @override
  Future<Either<Failure, MovieResponse>> getNowPlaying(int page) async {
    try {
      final response = await _Getdata<MovieResponseModel>()
          .getData(remoteDataSource.getNowPlaying(page), networkInfo);
      return response.fold((failure) => left(failure),
          (movieResponseModel) => right(movieResponseModel.toDomain()));
    } on ServerException catch (_) {
      return left(const Failure.serverFailure());
    } on UnexpectedException catch (_) {
      return left(const Failure.unexpectedFailure());
    } catch (e) {
      return left(const Failure.connectionFailure());
    }
  }

  @override
  Future<Either<Failure, MovieVideoResponse>> getMovieVideo(int movieId) async {
    try {
      final response = await _Getdata<MovieVideoResponseModel>()
          .getData(remoteDataSource.getMovieVideo(movieId), networkInfo);
      return response.fold((failure) => left(failure),
          (videoResponseModel) => right(videoResponseModel.toDomain()));
    } on ServerException catch (_) {
      return left(const Failure.serverFailure());
    } on UnexpectedException catch (_) {
      return left(const Failure.unexpectedFailure());
    } catch (e) {
      return left(const Failure.connectionFailure());
    }
  }

  @override
  Future<Either<Failure, MovieResponse>> getPopulars(int page) async {
    try {
      final response = await _Getdata<MovieResponseModel>()
          .getData(remoteDataSource.getPopulars(page), networkInfo);
      return response.fold((failure) => left(failure),
          (movieResponseModel) => right(movieResponseModel.toDomain()));
    } on ServerException catch (_) {
      return left(const Failure.serverFailure());
    } on UnexpectedException catch (_) {
      return left(const Failure.unexpectedFailure());
    } catch (e) {
      return left(const Failure.connectionFailure());
    }
  }

  @override
  Future<Either<Failure, MovieResponse>> getTopRated(int page) async {
    try {
      final response = await _Getdata<MovieResponseModel>()
          .getData(remoteDataSource.getTopRated(page), networkInfo);
      return response.fold((failure) => left(failure),
          (movieResponseModel) => right(movieResponseModel.toDomain()));
    } on ServerException catch (_) {
      return left(const Failure.serverFailure());
    } on UnexpectedException catch (_) {
      return left(const Failure.unexpectedFailure());
    } catch (e) {
      return left(const Failure.connectionFailure());
    }
  }

  @override
  Future<Either<Failure, MovieResponse>> getTrending(int page) async {
    try {
      final response = await _Getdata<MovieResponseModel>()
          .getData(remoteDataSource.getTrending(page), networkInfo);
      return response.fold((failure) => left(failure),
          (movieResponseModel) => right(movieResponseModel.toDomain()));
    } on ServerException catch (_) {
      return left(const Failure.serverFailure());
    } on UnexpectedException catch (_) {
      return left(const Failure.unexpectedFailure());
    } catch (e) {
      return left(const Failure.connectionFailure());
    }
  }

  @override
  Future<Either<Failure, MovieResponse>> getMoviesOfGenre(
      int genreId, int page) async {
    try {
      final response = await _Getdata<MovieResponseModel>().getData(
          remoteDataSource.getMoviesofGenre(genreId, page), networkInfo);
      return response.fold((failure) => left(failure),
          (movieResponseModel) => right(movieResponseModel.toDomain()));
    } on ServerException catch (_) {
      return left(const Failure.serverFailure());
    } on UnexpectedException catch (_) {
      return left(const Failure.unexpectedFailure());
    } catch (e) {
      return left(const Failure.connectionFailure());
    }
  }

  @override
  Future<Either<Failure, Person>> getperson(int personId) async {
    try {
      final response = await _Getdata<PersonModel>()
          .getData(remoteDataSource.getperson(personId), networkInfo);
      return response.fold((failure) => left(failure),
          (personModel) => right(personModel.toDomain()));
    } on ServerException catch (_) {
      return left(const Failure.serverFailure());
    } on UnexpectedException catch (_) {
      return left(const Failure.unexpectedFailure());
    } catch (e) {
      return left(const Failure.connectionFailure());
    }
  }

  @override
  Future<Either<Failure, MovieResponse>> searchMovies(
      String query, int page) async {
    try {
      final response = await _Getdata<MovieResponseModel>()
          .getData(remoteDataSource.searchMovies(query, page), networkInfo);
      return response.fold((failure) => left(failure),
          (movieResponseModel) => right(movieResponseModel.toDomain()));
    } on ServerException catch (_) {
      return left(const Failure.serverFailure());
    } on UnexpectedException catch (_) {
      return left(const Failure.unexpectedFailure());
    } catch (e) {
      return left(const Failure.connectionFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> addFavoriteMovie(User user, Movie movie) async {
    if (await networkInfo.isConnected) {
      try {
        final userDoc = firestore
            .collection("users/${user.id.getOrCrash()}/user_favorites_movies");
        final MovieModel movieModel = MovieModel.fromDomain(movie);
        await userDoc
            .document(movieModel.id.toString())
            .setData(movieModel.toJson());
        return right(unit);
      } on ServerException catch (_) {
        return left(const Failure.serverFailure());
      } on UnexpectedException catch (_) {
        return left(const Failure.unexpectedFailure());
      } catch (e) {
        return left(const Failure.connectionFailure());
      }
    } else {
      return left(const Failure.connectionFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteFavoriteMovie(
      User user, Movie movie) async {
    if (await networkInfo.isConnected) {
      try {
        final userDoc = firestore
            .collection("users/${user.id.getOrCrash()}/user_favorites_movies");
        final MovieModel movieModel = MovieModel.fromDomain(movie);
        await userDoc.document(movieModel.id.toString()).delete();
        return right(unit);
      } on ServerException catch (_) {
        return left(const Failure.serverFailure());
      } on UnexpectedException catch (_) {
        return left(const Failure.unexpectedFailure());
      } catch (e) {
        return left(const Failure.connectionFailure());
      }
    } else {
      return left(const Failure.connectionFailure());
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getFavoritesMovies(User user) async {
    if (await networkInfo.isConnected) {
      try {
        final resp = await firestore
            .collection("users/${user.id.getOrCrash()}/user_favorites_movies/")
            .getDocuments();
        if (resp.documents == null || resp.documents.isEmpty) {
          final List<Movie> emptyList = [];
          return right(emptyList);
        }
        final movies = MoviesModels.fromJsonList(resp);
        return right(
            movies.items.map((movieModel) => movieModel.toDomain()).toList());
      } on ServerException catch (_) {
        return left(const Failure.serverFailure());
      } on UnexpectedException catch (_) {
        return left(const Failure.unexpectedFailure());
      } catch (e) {
        return left(const Failure.connectionFailure());
      }
    } else {
      return left(const Failure.connectionFailure());
    }
  }
}

class _Getdata<T> {
  Future<Either<Failure, T>> getData(
      Future<T> remoteData, NetworkInfo networkInfo) async {
    if (await networkInfo.isConnected) {
      final data = await remoteData;
      return Right(data);
    } else {
      return const Left(ConnectionFailure());
    }
  }
}
