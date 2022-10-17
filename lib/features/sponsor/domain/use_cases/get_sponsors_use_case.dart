import 'package:dartz/dartz.dart';
import 'package:devfest/core/exceptions/failures.dart';
import 'package:devfest/core/use_case.dart';
import 'package:devfest/features/sponsor/domain/models/sponsor.dart';
import 'package:devfest/features/sponsor/domain/repositories/sponsor_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetSponsorsUseCase implements UseCase<Future<Either<Failure, List<Sponsor>>>, NoParams> {
  final SponsorRepository _sponsorRepository;

  GetSponsorsUseCase(this._sponsorRepository);
  @override
  Future<Either<Failure, List<Sponsor>>> call(NoParams params) {
    return _sponsorRepository.getSponsors();
  }
}
