const String _theMovieDbUrl = 'api.themoviedb.org';
const String _apiKey = 'e054f475fc000f9bbb850c3f72292eb5';
const String _popularPath = '3/movie/popular';
const String _nowPlayingPath = '3/movie/now_playing';
const String _topRatedPath = '3/movie/top_rated';
const String _tredingPath = '3/trending/movie/day';
const String _genrePath = '3/genre/movie/list';
const String _language = 'en-Us';

class Urls {
  Uri popularsUrl(int page) {
    return _getMovieUri(_popularPath, page);
  }

  Uri nowPlayingUrl(int page) {
    return _getMovieUri(_nowPlayingPath, page);
  }

  Uri topRatedUrl(int page) {
    return _getMovieUri(_topRatedPath, page);
  }

  Uri trendingUrl(int page) {
    return _getMovieUri(_tredingPath, page);
  }

  Uri get genreUrl {
    return _getUri(_genrePath);
  }

  Uri moviesOfGenre(int genreId, int page) {
    final url = Uri.https(_theMovieDbUrl, '3/discover/movie', {
      'api_key': _apiKey,
      'language': _language,
      'sort_by': 'popularity.desc',
      'with_genres': genreId.toString(),
      'page': page.toString(),
    });
    return url;
  }

  Uri castUrl(int movieId) {
    return _getUri('3/movie/${movieId.toString()}/credits');
  }

  Uri personUrl(int personId) {
    return _getUri('3/person/${personId.toString()}');
  }

  Uri searchMovieUrl(String query, int page) {
    final url = Uri.https(_theMovieDbUrl, '3/search/movie', {
      'api_key': _apiKey,
      'language': _language,
      'query': query,
      'page': page.toString(),
    });
    return url;
  }

  Uri movieVideoResponse(int movieId) {
    return _getUri('3/movie/${movieId.toString()}/videos');
  }

  Uri _getUri(String unencodedPath) {
    final url = Uri.https(_theMovieDbUrl, unencodedPath, {
      'api_key': _apiKey,
      'language': _language,
    });
    return url;
  }

  Uri _getMovieUri(String unencodedPath, int page) {
    final url = Uri.https(_theMovieDbUrl, unencodedPath, {
      'api_key': _apiKey,
      'language': _language,
      'page': page.toString(),
    });
    return url;
  }
}
