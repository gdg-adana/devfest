import 'package:devfest/features/agenda/data/dtos/speaker_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'speaker.freezed.dart';

@freezed
abstract class Speaker with _$Speaker {
  factory Speaker({
    required String name,
    required String company,
    required String image,
    String? linkedin,
    String? twitter,
  }) = _Speaker;

  factory Speaker.fromDto(SpeakerDto dto) => Speaker(
        name: dto.name,
        company: dto.company,
        image: dto.image,
        linkedin: dto.linkedin,
        twitter: dto.twitter,
      );
}
