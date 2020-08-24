import 'package:freezed_annotation/freezed_annotation.dart';

part 'cast_entity.freezed.dart';

@freezed
abstract class Cast with _$Cast {
  const factory Cast({
    @required int castId,
    @required @nullable String character,
    @required @nullable String creditId,
    @required @nullable int gender,
    @required int id,
    @required String name,
    @required @nullable int order,
    @required @nullable String profilePath,
  }) = _Cast;
}

@freezed
abstract class CastResponse with _$CastResponse {
  const factory CastResponse({@required List<Cast> castList}) = _CastResponse;
}
