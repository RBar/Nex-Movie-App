import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../core/errors/failures.dart';
import '../domain/entities/cast_entity.dart';
import '../domain/repository_interface.dart';

@injectable
class GetCastProvider {
  final IMovieAppRepository repository;

  GetCastProvider(this.repository);

  Future<Either<Failure, CastResponse>> getCast(int movieId) async {
    final response = await repository.getCast(movieId);
    return response;
  }
}
