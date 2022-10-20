import 'package:devfest/features/agenda/data/dtos/speaker_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_dto.freezed.dart';
part 'session_dto.g.dart';

@freezed
abstract class SessionDto with _$SessionDto {
  factory SessionDto({
    required String title,
    required String startTime,
    required String endTime,
    SpeakerDto? speakerDto,
    String? desc,
  }) = _SessionDto;
  factory SessionDto.fromJson(Map<String, dynamic> json) => _$SessionDtoFromJson(json);
}
