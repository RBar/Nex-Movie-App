import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nex_movie_app/movies/domain/entities/movie_video_response.dart';
import '../../core/errors/failures.dart';
import '../domain/repository_interface.dart';

@injectable
class GetVideoReponseProvider {
  final IMovieAppRepository repository;

  GetVideoReponseProvider(this.repository);

  Future<Either<Failure, MovieVideoResponse>> getVideoResponse(
      int movieId) async {
    final response = await repository.getMovieVideo(movieId);
    return response;
  }
}
