import 'package:devfest/core/exceptions/exceptions.dart';
import 'package:devfest/core/network/firebase/firestore_service.dart';
import 'package:devfest/features/agenda/data/data_sources/agenda_remote_data_source.dart';
import 'package:devfest/features/agenda/data/dtos/agenda_dto.dart';
import 'package:devfest/utils/constants.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AgendaRemoteDataSource)
class AgendaRemoteDataSourceImpl implements AgendaRemoteDataSource {
  final FirestoreService _firestoreService;

  AgendaRemoteDataSourceImpl(this._firestoreService);

  @override
  Future<List<AgendaDto>> getAgenda() async {
    try {
      final result = await _firestoreService.read(collection: Constants.agendaCollectionName);

      return result.map((snapshot) => AgendaDto.fromJson(snapshot.data())).toList();
    } catch (e) {
      throw (FirestoreException(
        e,
        stackTrace: StackTrace.current,
        description: 'Something went wrong during getting faq from firestore',
      ));
    }
  }
}
