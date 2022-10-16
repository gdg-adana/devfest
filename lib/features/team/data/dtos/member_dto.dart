import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_dto.freezed.dart';
part 'member_dto.g.dart';

@Freezed(toJson: false)
abstract class MemberDto with _$MemberDto {
  factory MemberDto({
    required String name,
    required String title,
    required String linkedin,
    required String twitter,
    required String image,
  }) = _MemberDto;

  factory MemberDto.fromJson(Map<String, Object?> json) => _$MemberDtoFromJson(json);
}
