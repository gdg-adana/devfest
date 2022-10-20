import 'package:dartz/dartz.dart';
import 'package:devfest/core/exceptions/failures.dart';
import 'package:devfest/features/agenda/domain/models/agenda.dart';

abstract class AgendaRepository {
  Future<Either<Failure, List<Agenda>>> getAgenda();
}
