import 'package:bloc/bloc.dart';
import 'package:devfest/core/use_case.dart';
import 'package:devfest/features/team/domain/use_cases/get_team_members_use_case.dart';
import 'package:devfest/features/team/presentation/cubit/team_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class TeamCubit extends Cubit<TeamState> {
  TeamCubit(this._getTeamMembersUseCase) : super(TeamState.initial());

  final GetTeamMembersUseCase _getTeamMembersUseCase;

  Future<void> getTeamMembers() async {
    emit(state.copyWith(status: TeamStatus.loading));
    final result = await _getTeamMembersUseCase(const NoParams());
    result.fold(
      (failure) => emit(
        state.copyWith(status: TeamStatus.error, error: failure.message),
      ),
      (members) => emit(
        state.copyWith(status: TeamStatus.loaded, members: members),
      ),
    );
  }
}
