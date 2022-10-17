import 'package:dartz/dartz.dart';
import 'package:devfest/core/exceptions/failures.dart';
import 'package:devfest/features/sponsor/domain/models/sponsor.dart';

abstract class SponsorRepository {
  Future<Either<Failure, List<Sponsor>>> getSponsors();
}
