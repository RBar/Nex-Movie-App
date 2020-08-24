import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../core/errors/failures.dart';
import '../domain/entities/person_entity.dart';
import '../domain/repository_interface.dart';

@injectable
class GetPersonProvider {
  final IMovieAppRepository repository;

  GetPersonProvider(this.repository);

  Future<Either<Failure, Person>> getPerson(int personId) async {
    final response = await repository.getperson(personId);
    return response;
  }
}
