import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq_dto.freezed.dart';
part 'faq_dto.g.dart';

@freezed
abstract class FAQDto with _$FAQDto {
  factory FAQDto({
    required String question,
    required String answer,
  }) = _FAQDto;
  factory FAQDto.fromJson(Map<String, dynamic> json) => _$FAQDtoFromJson(json);
}
