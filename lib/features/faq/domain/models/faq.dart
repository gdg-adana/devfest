import 'package:devfest/features/faq/data/dtos/faq_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq.freezed.dart';

@freezed
abstract class FAQ with _$FAQ {
  factory FAQ({
    required String question,
    required String answer,
  }) = _FAQ;

  factory FAQ.fromDto(FAQDto dto) => FAQ(question: dto.question, answer: dto.answer);
}
