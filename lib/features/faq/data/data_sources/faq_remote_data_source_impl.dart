import 'package:devfest/core/exceptions/exceptions.dart';
import 'package:devfest/core/network/firebase/firestore_service.dart';
import 'package:devfest/features/faq/data/data_sources/faq_remote_data_source.dart';
import 'package:devfest/features/faq/data/dtos/faq_dto.dart';
import 'package:devfest/utils/constants.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: FAQRemoteDataSource)
class FAQRemoteDataSourceImpl implements FAQRemoteDataSource {
  final FirestoreService _firestoreService;

  FAQRemoteDataSourceImpl(this._firestoreService);

  @override
  Future<List<FAQDto>> getFAQ() async {
    try {
      final result = await _firestoreService.read(collection: Constants.faqCollectionName);

      return result.map((snapshot) => FAQDto.fromJson(snapshot.data())).toList();
    } catch (e) {
      throw (FirestoreException(
        e,
        stackTrace: StackTrace.current,
        description: 'Something went wrong during getting faq from firestore',
      ));
    }
  }
}
