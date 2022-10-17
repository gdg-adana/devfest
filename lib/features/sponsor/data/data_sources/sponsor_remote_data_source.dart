import 'package:devfest/features/sponsor/data/dtos/sponsor_dto.dart';

abstract class SponsorRemoteDataSource {
  Future<List<SponsorDto>> getSponsors();
}
