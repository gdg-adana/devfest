import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String? message;

  const Failure(this.message);

  @override
  List<Object> get props => [message ?? ""];

  @override
  String toString() {
    return message ?? "<<< No message provided for this Failure: $runtimeType >>>";
  }
}

class GeneralFailure extends Failure {
  const GeneralFailure(super.message);
}

class FirestoreFailure extends Failure {
  const FirestoreFailure(super.message);
}
