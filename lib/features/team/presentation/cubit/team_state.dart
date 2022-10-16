import 'package:devfest/features/team/domain/models/member.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_state.freezed.dart';

enum TeamStatus { initial, loading, loaded, error }

@freezed
class TeamState with _$TeamState {
  const factory TeamState({
    required TeamStatus status,
    List<Member>? members,
    String? error,
  }) = _TeamState;

  factory TeamState.initial() => const TeamState(status: TeamStatus.initial);
}
