import 'package:dartz/dartz.dart';
import 'package:devfest/core/exceptions/failures.dart';
import 'package:devfest/core/use_case.dart';
import 'package:devfest/features/agenda/domain/models/agenda.dart';
import 'package:devfest/features/agenda/domain/repositories/agenda_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAgendaUseCase implements UseCase<Future<Either<Failure, List<Agenda>>>, NoParams> {
  final AgendaRepository _agendaRepository;

  GetAgendaUseCase(this._agendaRepository);
  @override
  Future<Either<Failure, List<Agenda>>> call(NoParams params) {
    return _agendaRepository.getAgenda();
  }
}
