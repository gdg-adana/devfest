import 'package:devfest/core/exceptions/exceptions.dart';
import 'package:devfest/features/team/data/data_sources/team_remote_data_source.dart';
import 'package:devfest/features/team/domain/models/member.dart';
import 'package:devfest/core/exceptions/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:devfest/features/team/domain/repositories/team_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: TeamRepository)
class TeamRepositoryImpl implements TeamRepository {
  final TeamRemoteDataSource _teamRemoteDataSource;

  TeamRepositoryImpl(this._teamRemoteDataSource);
  @override
  Future<Either<Failure, List<Member>>> getMembers() async {
    try {
      final result = await _teamRemoteDataSource.getTeamMembers();
      return Right(result.map((memberDto) => Member.fromDto(memberDto)).toList());
    } catch (error) {
      if (error is FirestoreException) {
        return Left(FirestoreFailure(error.description));
      }
      return Left(GeneralFailure(error.toString()));
    }
  }
}
