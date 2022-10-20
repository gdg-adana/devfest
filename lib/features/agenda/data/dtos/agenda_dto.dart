import 'package:devfest/features/agenda/data/dtos/session_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'agenda_dto.freezed.dart';
part 'agenda_dto.g.dart';

@freezed
abstract class AgendaDto with _$AgendaDto {
  factory AgendaDto({
    required String day,
    required List<SessionDto> sessions,
  }) = _AgendaDto;
  factory AgendaDto.fromJson(Map<String, dynamic> json) => _$AgendaDtoFromJson(json);
}
