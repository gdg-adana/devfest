import 'package:devfest/features/faq/domain/models/faq.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq_state.freezed.dart';

enum FAQStatus { initial, loading, loaded, error }

@freezed
class FAQState with _$FAQState {
  const factory FAQState({
    required FAQStatus status,
    List<FAQ>? faq,
    String? error,
  }) = _FAQState;

  factory FAQState.initial() => const FAQState(status: FAQStatus.initial);
}
