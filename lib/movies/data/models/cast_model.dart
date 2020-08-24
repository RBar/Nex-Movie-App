import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/cast_entity.dart';

part 'cast_model.freezed.dart';
part 'cast_model.g.dart';

@freezed
abstract class CastModel implements _$CastModel {
  @JsonSerializable(anyMap: true, fieldRename: FieldRename.snake)
  const factory CastModel({
    @required int castId,
    @required @nullable String character,
    @required @nullable String creditId,
    @required @nullable int gender,
    @required int id,
    @required String name,
    @required @nullable int order,
    @required @nullable String profilePath,
  }) = _CastModel;

  const CastModel._();

  factory CastModel.fromJson(Map<String, dynamic> json) =>
      _$CastModelFromJson(json);

  Cast toDomain() => Cast(
      castId: castId,
      character: character,
      creditId: creditId,
      gender: gender,
      id: id,
      name: name,
      order: order,
      profilePath: profilePath);
}

@freezed
abstract class CastResponseModel implements _$CastResponseModel {
  const factory CastResponseModel({@required List<CastModel> cast}) =
      _CastResponseModel;
  factory CastResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CastResponseModelFromJson(json);
  const CastResponseModel._();
  CastResponse toDomain() => CastResponse(
      castList: cast.map((castModel) => castModel.toDomain()).toList());
}
