import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@singleton
class FirestoreService {
  FirestoreService(this._firebaseFirestore);

  final FirebaseFirestore _firebaseFirestore;

  Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> read({required String collection}) async {
    final result = await _firebaseFirestore.collection(collection).orderBy('order').get();
    return result.docs;
  }
}

@module
abstract class FirestoreModule {
  FirebaseFirestore get instance => FirebaseFirestore.instance;
}
