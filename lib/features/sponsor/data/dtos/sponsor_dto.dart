import 'package:freezed_annotation/freezed_annotation.dart';

part 'sponsor_dto.freezed.dart';
part 'sponsor_dto.g.dart';

@freezed
abstract class SponsorDto with _$SponsorDto {
  factory SponsorDto({
    required String image,
    required String url,
    required String name,
    required String type,
  }) = _SponsorDto;
  factory SponsorDto.fromJson(Map<String, dynamic> json) => _$SponsorDtoFromJson(json);
}
