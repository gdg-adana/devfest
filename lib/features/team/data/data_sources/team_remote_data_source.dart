import 'package:devfest/features/team/data/dtos/member_dto.dart';

abstract class TeamRemoteDataSource {
  Future<List<MemberDto>> getTeamMembers();
}
