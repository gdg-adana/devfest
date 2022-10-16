class FirestoreException implements Exception {
  final dynamic error;
  final String description;
  final StackTrace stackTrace;

  FirestoreException(this.error, {required this.description, required this.stackTrace});
}
