import 'package:dartz/dartz.dart';
import 'package:devfest/core/exceptions/failures.dart';
import 'package:devfest/core/use_case.dart';
import 'package:devfest/features/team/domain/models/member.dart';
import 'package:devfest/features/team/domain/repositories/team_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetTeamMembersUseCase implements UseCase<Future<Either<Failure, List<Member>>>, NoParams> {
  final TeamRepository _teamRepository;

  GetTeamMembersUseCase(this._teamRepository);
  @override
  Future<Either<Failure, List<Member>>> call(NoParams params) {
    return _teamRepository.getMembers();
  }
}
