import 'package:devfest/features/agenda/domain/models/agenda.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'agenda_state.freezed.dart';

enum AgendaStatus { initial, loading, loaded, error }

@freezed
class AgendaState with _$AgendaState {
  const factory AgendaState({
    required AgendaStatus status,
    List<Agenda>? agendaList,
    String? error,
  }) = _AgendaState;

  factory AgendaState.initial() => const AgendaState(status: AgendaStatus.initial);
}
