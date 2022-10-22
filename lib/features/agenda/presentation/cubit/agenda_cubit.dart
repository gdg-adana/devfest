import 'package:bloc/bloc.dart';
import 'package:devfest/core/use_case.dart';
import 'package:devfest/core/use_cases/get_agenda_use_case.dart';
import 'package:devfest/features/agenda/presentation/cubit/cubit.dart';
import 'package:injectable/injectable.dart';

@injectable
class AgendaCubit extends Cubit<AgendaState> {
  AgendaCubit(this._getAgendaUseCase) : super(AgendaState.initial());

  final GetAgendaUseCase _getAgendaUseCase;

  Future<void> getAgenda() async {
    emit(state.copyWith(status: AgendaStatus.loading));
    final result = await _getAgendaUseCase(const NoParams());
    result.fold(
      (failure) => emit(
        state.copyWith(status: AgendaStatus.error, error: failure.message),
      ),
      (agendaList) => emit(
        state.copyWith(status: AgendaStatus.loaded, agendaList: agendaList),
      ),
    );
  }
}
