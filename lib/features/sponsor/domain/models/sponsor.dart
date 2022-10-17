import 'package:devfest/features/sponsor/data/dtos/sponsor_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sponsor.freezed.dart';

@freezed
abstract class Sponsor with _$Sponsor {
  factory Sponsor({
    required String name,
    required String image,
    required String url,
    required String type,
  }) = _Sponsor;

  factory Sponsor.fromDto(SponsorDto dto) => Sponsor(
        name: dto.name,
        image: dto.image,
        url: dto.url,
        type: dto.type,
      );
}
