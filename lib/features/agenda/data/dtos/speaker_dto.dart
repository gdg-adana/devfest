import 'package:freezed_annotation/freezed_annotation.dart';

part 'speaker_dto.freezed.dart';
part 'speaker_dto.g.dart';

@freezed
abstract class SpeakerDto with _$SpeakerDto {
  factory SpeakerDto({
    required String name,
    required String company,
    required String image,
    required String title,
    String? linkedin,
    String? twitter,
  }) = _SpeakerDto;
  factory SpeakerDto.fromJson(Map<String, dynamic> json) => _$SpeakerDtoFromJson(json);
}
