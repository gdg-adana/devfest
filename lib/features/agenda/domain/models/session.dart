import 'package:devfest/features/agenda/data/dtos/session_dto.dart';
import 'package:devfest/features/agenda/domain/models/speaker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';

@freezed
abstract class Session with _$Session {
  factory Session({
    required String title,
    required String startTime,
    required String endTime,
    Speaker? speaker,
    String? desc,
  }) = _Session;

  factory Session.fromDto(SessionDto dto) => Session(
        title: dto.title,
        startTime: dto.startTime,
        endTime: dto.endTime,
        speaker: dto.speakerDto == null ? null : Speaker.fromDto(dto.speakerDto!),
        desc: dto.desc,
      );
}
