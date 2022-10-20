import 'package:devfest/features/agenda/data/dtos/agenda_dto.dart';
import 'package:devfest/features/agenda/domain/models/session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'agenda.freezed.dart';

@freezed
abstract class Agenda with _$Agenda {
  factory Agenda({
    required String day,
    required List<Session> sessions,
  }) = _Agenda;

  factory Agenda.fromDto(AgendaDto dto) => Agenda(
        day: dto.day,
        sessions: dto.sessions.map((sessionDto) => Session.fromDto(sessionDto)).toList(),
      );
}
