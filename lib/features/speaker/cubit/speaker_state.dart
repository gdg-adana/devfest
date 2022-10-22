import 'package:devfest/features/agenda/domain/models/speaker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'speaker_state.freezed.dart';

enum SpeakerStatus { initial, loading, loaded, error }

@freezed
class SpeakerState with _$SpeakerState {
  const factory SpeakerState({
    required SpeakerStatus status,
    List<Speaker>? speakers,
    String? error,
  }) = _SpeakerState;
  factory SpeakerState.initial() => const SpeakerState(status: SpeakerStatus.initial);
}
