import 'package:devfest/core/network/firebase/firestore_service.dart';
import 'package:devfest/features/team/data/data_sources/team_remote_data_source.dart';
import 'package:devfest/features/team/data/dtos/member_dto.dart';
import 'package:devfest/utils/constants.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: TeamRemoteDataSource)
class TeamRemoteDataSourceImpl implements TeamRemoteDataSource {
  final FirestoreService _firestoreService;

  TeamRemoteDataSourceImpl(this._firestoreService);

  @override
  Future<List<MemberDto>> getTeamMembers() async {
    try {
      final result = await _firestoreService.read(collection: Constants.teamCollectionName);

      return result.map((snapshot) => MemberDto.fromJson(snapshot.data())).toList();
    } catch (e) {
      print(e);
      throw (Exception);
    }
  }
}
