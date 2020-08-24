import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_video_response.freezed.dart';

@freezed
abstract class MovieVideoResponse with _$MovieVideoResponse {
  const factory MovieVideoResponse({
    @required String id,
    @required String key,
    @required String name,
  }) = _MovieVideoResponse;
}
