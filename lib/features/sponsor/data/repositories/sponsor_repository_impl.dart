import 'package:dartz/dartz.dart';
import 'package:devfest/core/exceptions/exceptions.dart';
import 'package:devfest/core/exceptions/failures.dart';
import 'package:devfest/features/sponsor/data/data_sources/sponsor_remote_data_source.dart';
import 'package:devfest/features/sponsor/domain/models/sponsor.dart';
import 'package:devfest/features/sponsor/domain/repositories/sponsor_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SponsorRepository)
class SponsorRepositoryImpl implements SponsorRepository {
  final SponsorRemoteDataSource _sponsorRemoteDataSource;

  SponsorRepositoryImpl(this._sponsorRemoteDataSource);
  @override
  Future<Either<Failure, List<Sponsor>>> getSponsors() async {
    try {
      final result = await _sponsorRemoteDataSource.getSponsors();
      return Right(result.map((sponsorDto) => Sponsor.fromDto(sponsorDto)).toList());
    } catch (error) {
      if (error is FirestoreException) {
        return Left(FirestoreFailure(error.description));
      }
      return Left(GeneralFailure(error.toString()));
    }
  }
}
