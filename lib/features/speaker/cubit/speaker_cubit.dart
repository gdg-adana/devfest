import 'package:bloc/bloc.dart';
import 'package:devfest/core/use_case.dart';
import 'package:devfest/core/use_cases/get_agenda_use_case.dart';
import 'package:devfest/features/agenda/domain/models/speaker.dart';
import 'package:devfest/features/speaker/cubit/cubit.dart';
import 'package:devfest/features/speaker/cubit/speaker_state.dart';

class SpeakerCubit extends Cubit<SpeakerState> {
  SpeakerCubit(this._agendaUseCase) : super(SpeakerState.initial());

  final GetAgendaUseCase _agendaUseCase;

  Future<void> getSpeakers() async {
    emit(state.copyWith(status: SpeakarStatus.loading));

    final result = await _agendaUseCase(const NoParams());

    result.fold(
        (error) => emit(
              state.copyWith(
                status: SpeakarStatus.error,
                error: error.message,
              ),
            ), (agenda) {
      List<Speaker> speakers = [];
      for (var day in agenda) {
        for (var session in day.sessions) {
          if (session.speaker != null) {
            speakers.add(session.speaker!);
          }
        }
      }
      emit(state.copyWith(status: SpeakarStatus.loaded, speakers: speakers));
    });
  }
}
