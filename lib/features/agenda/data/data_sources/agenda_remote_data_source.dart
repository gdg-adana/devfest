import 'package:devfest/features/agenda/data/dtos/agenda_dto.dart';

abstract class AgendaRemoteDataSource {
  Future<List<AgendaDto>> getAgenda();
}
