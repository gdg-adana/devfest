import 'package:devfest/features/sponsor/domain/models/sponsor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sponsor_state.freezed.dart';

enum SponsorStatus { initial, loading, loaded, error }

@freezed
class SponsorState with _$SponsorState {
  const factory SponsorState({
    required SponsorStatus status,
    List<Sponsor>? sponsors,
    String? error,
  }) = _SponsorState;

  factory SponsorState.initial() => const SponsorState(status: SponsorStatus.initial);
}
