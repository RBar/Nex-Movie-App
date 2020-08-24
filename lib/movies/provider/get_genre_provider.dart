import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../core/errors/failures.dart';
import '../domain/entities/genre_entity.dart';
import '../domain/repository_interface.dart';

@injectable
class GetGenreProvider {
  final IMovieAppRepository repository;

  GetGenreProvider(this.repository);

  Future<Either<Failure, Genre>> getGenre(int genreId) async {
    final response = await repository.getGenre(genreId);
    return response;
  }

  Future<Either<Failure, List<Genre>>> getAllGenre() async {
    final response = await repository.getAllGenres();
    return response;
  }
}
