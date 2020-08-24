import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre_entity.freezed.dart';

@freezed
abstract class Genre with _$Genre {
  const factory Genre({
    @required String name,
    @required int id,
  }) = _Genre;
}
