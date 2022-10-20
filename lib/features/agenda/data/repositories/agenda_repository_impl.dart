import 'package:dartz/dartz.dart';
import 'package:devfest/core/exceptions/exceptions.dart';
import 'package:devfest/core/exceptions/failures.dart';
import 'package:devfest/features/agenda/data/data_sources/agenda_remote_data_source.dart';
import 'package:devfest/features/agenda/domain/models/agenda.dart';
import 'package:devfest/features/agenda/domain/repositories/agenda_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AgendaRepository)
class AgendaRepositoryImpl implements AgendaRepository {
  final AgendaRemoteDataSource _agendaRemoteDataSource;

  AgendaRepositoryImpl(this._agendaRemoteDataSource);
  @override
  Future<Either<Failure, List<Agenda>>> getAgenda() async {
    try {
      final result = await _agendaRemoteDataSource.getAgenda();
      return Right(result.map((agendaDto) => Agenda.fromDto(agendaDto)).toList());
    } catch (error) {
      if (error is FirestoreException) {
        return Left(FirestoreFailure(error.description));
      }
      return Left(GeneralFailure(error.toString()));
    }
  }
}
