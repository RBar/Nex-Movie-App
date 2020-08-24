import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/genre_entity.dart';

part 'genre_model.freezed.dart';
part 'genre_model.g.dart';

@freezed
abstract class GenreModel implements _$GenreModel {
  @JsonSerializable(anyMap: true, fieldRename: FieldRename.snake)
  const factory GenreModel({
    @required String name,
    @required int id,
  }) = _GenreModel;

  const GenreModel._();

  Genre toDomain() => Genre(name: name, id: id);
}
