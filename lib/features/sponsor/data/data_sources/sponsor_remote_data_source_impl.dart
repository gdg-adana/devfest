import 'package:devfest/core/exceptions/exceptions.dart';
import 'package:devfest/core/network/firebase/firestore_service.dart';
import 'package:devfest/features/sponsor/data/data_sources/sponsor_remote_data_source.dart';
import 'package:devfest/features/sponsor/data/dtos/sponsor_dto.dart';
import 'package:devfest/utils/constants.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SponsorRemoteDataSource)
class SponsorRemoteDataSourceImpl implements SponsorRemoteDataSource {
  final FirestoreService _firestoreService;

  SponsorRemoteDataSourceImpl(this._firestoreService);

  @override
  Future<List<SponsorDto>> getSponsors() async {
    try {
      final result = await _firestoreService.read(collection: Constants.sponsorCollectionName);

      return result.map((snapshot) => SponsorDto.fromJson(snapshot.data())).toList();
    } catch (e) {
      throw (FirestoreException(
        e,
        stackTrace: StackTrace.current,
        description: 'Something went wrong during getting sponsors from firestore',
      ));
    }
  }
}
