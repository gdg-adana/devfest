import 'package:devfest/features/team/data/dtos/member_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'member.freezed.dart';

@freezed
abstract class Member with _$Member {
  factory Member({
    required String name,
    required String title,
    required String linkedin,
    required String twitter,
    required String image,
  }) = _Member;

  factory Member.fromDto(MemberDto dto) => Member(
        name: dto.name,
        title: dto.title,
        linkedin: dto.linkedin,
        twitter: dto.twitter,
        image: dto.image,
      );
}
