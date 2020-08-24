import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:nex_movie_app/movies/data/models/movie_model.dart';
import '../../core/errors/exceptions.dart';
import 'models/cast_model.dart';
import 'models/genre_model.dart';
import 'models/movie_response_model.dart';
import 'models/person_model.dart';
import 'url_constants.dart';

abstract class RemoteDataSource {
  Future<MovieResponseModel> getPopulars(int page);
  Future<MovieResponseModel> getTrending(int page);
  Future<MovieResponseModel> getNowPlaying(int page);
  Future<MovieResponseModel> getTopRated(int page);
  Future<MovieResponseModel> getMoviesofGenre(int genreId, int page);
  Future<MovieResponseModel> searchMovies(String query, int page);
  Future<GenreModel> getGenre(int genreId);
  Future<List<GenreModel>> getAllGenres();
  Future<CastResponseModel> getCast(int movieId);
  Future<PersonModel> getperson(int personId);
  Future<MovieVideoResponseModel> getMovieVideo(int movieId);
}

@LazySingleton(as: RemoteDataSource)
class RemoteDataSourceImpl implements RemoteDataSource {
  final http.Client client;

  RemoteDataSourceImpl(this.client);

  @override
  Future<CastResponseModel> getCast(int movieId) async {
    final url = Urls().castUrl(movieId);

    final response = await client.get(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body);
      final castResponseModel =
          CastResponseModel.fromJson(decodedData as Map<String, dynamic>);
      return castResponseModel;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<PersonModel> getperson(int personId) async {
    final url = Urls().personUrl(personId);
    final response = await client.get(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body);
      final personModel =
          PersonModel.fromJson(decodedData as Map<String, dynamic>);
      return personModel;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<GenreModel>> getAllGenres() async {
    try {
      final response = await http.get(Urls().genreUrl);
      if (response.statusCode == 200) {
        final decodedData = json.decode(response.body);
        final genresDictionary = decodedData['genres'] as List<dynamic>;
        final genresModelsList = genresDictionary
            .map((genre) => GenreModel(
                name: genre['name'] as String, id: genre['id'] as int))
            .toList();
        return genresModelsList;
      }
      throw ServerException();
    } catch (e) {
      throw NoConnectionException();
    }
  }

  @override
  Future<GenreModel> getGenre(int genreId) async {
    try {
      final url = Urls().genreUrl;
      final response = await client.get(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
      );
      if (response.statusCode == 200) {
        final decodedData = json.decode(response.body);
        final genresDictionary = decodedData['genres'] as List<dynamic>;
        for (final genre in genresDictionary) {
          if (genre["id"] == genreId) {
            return GenreModel(
                name: genre["name"] as String, id: genre["id"] as int);
          }
        }
        return GenreModel(name: "", id: genreId);
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw NoConnectionException();
    }
  }

  @override
  Future<MovieResponseModel> getNowPlaying(int page) async {
    final url = Urls().nowPlayingUrl(page);
    return _getMovieResponseModel(url);
  }

  @override
  Future<MovieResponseModel> getPopulars(int page) async {
    final url = Urls().popularsUrl(page);
    return _getMovieResponseModel(url);
  }

  @override
  Future<MovieResponseModel> getTopRated(int page) async {
    final url = Urls().topRatedUrl(page);
    return _getMovieResponseModel(url);
  }

  @override
  Future<MovieResponseModel> getTrending(int page) async {
    final url = Urls().trendingUrl(page);
    return _getMovieResponseModel(url);
  }

  @override
  Future<MovieResponseModel> getMoviesofGenre(int genreId, int page) async {
    final url = Urls().moviesOfGenre(genreId, page);
    return _getMovieResponseModel(url);
  }

  @override
  Future<MovieResponseModel> searchMovies(String query, int page) async {
    final url = Urls().searchMovieUrl(query, page);
    return _getMovieResponseModel(url);
  }

  Future<MovieResponseModel> _getMovieResponseModel(Uri url) async {
    try {
      final response = await client.get(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
      );
      if (response.statusCode == 200) {
        final decodedData = json.decode(response.body);
        final movieResponseModel =
            MovieResponseModel.fromJson(decodedData as Map<String, dynamic>);
        return movieResponseModel;
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw NoConnectionException();
    }
  }

  @override
  Future<MovieVideoResponseModel> getMovieVideo(int movieId) async {
    final url = Urls().movieVideoResponse(movieId);
    final response = await client.get(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body);
      final videoModel = MovieVideoResponseModel.fromJson(
          decodedData['results'][0] as Map<String, dynamic>);
      return videoModel;
    } else {
      throw ServerException();
    }
  }
}
