import 'package:dartz/dartz.dart';
import 'package:nex_movie_app/auth/domain/user.dart';
import 'package:nex_movie_app/movies/domain/entities/movie_entity.dart';
import 'package:nex_movie_app/movies/domain/entities/movie_video_response.dart';
import '../../core/errors/failures.dart';
import 'entities/cast_entity.dart';
import 'entities/genre_entity.dart';
import 'entities/movie_response_entity.dart';
import 'entities/person_entity.dart';

abstract class IMovieAppRepository {
  Future<Either<Failure, MovieResponse>> getPopulars(int page);
  Future<Either<Failure, MovieResponse>> getTrending(int page);
  Future<Either<Failure, MovieResponse>> getNowPlaying(int page);
  Future<Either<Failure, MovieResponse>> getTopRated(int page);
  Future<Either<Failure, MovieResponse>> searchMovies(String query, int page);
  Future<Either<Failure, MovieResponse>> getMoviesOfGenre(
      int genreId, int page);
  Future<Either<Failure, MovieVideoResponse>> getMovieVideo(int movieId);
  Future<Either<Failure, Genre>> getGenre(int genreId);
  Future<Either<Failure, List<Genre>>> getAllGenres();
  Future<Either<Failure, CastResponse>> getCast(int movieId);
  Future<Either<Failure, Person>> getperson(int personId);
  Future<Either<Failure, List<Movie>>> getFavoritesMovies(User user);
  Future<Either<Failure, Unit>> addFavoriteMovie(User user, Movie movie);
  Future<Either<Failure, Unit>> deleteFavoriteMovie(User user, Movie movie);
}
