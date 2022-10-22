// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'speaker_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SpeakerState {
  SpeakarStatus get status => throw _privateConstructorUsedError;
  List<Speaker>? get speakers => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpeakerStateCopyWith<SpeakerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeakerStateCopyWith<$Res> {
  factory $SpeakerStateCopyWith(
          SpeakerState value, $Res Function(SpeakerState) then) =
      _$SpeakerStateCopyWithImpl<$Res, SpeakerState>;
  @useResult
  $Res call({SpeakarStatus status, List<Speaker>? speakers, String? error});
}

/// @nodoc
class _$SpeakerStateCopyWithImpl<$Res, $Val extends SpeakerState>
    implements $SpeakerStateCopyWith<$Res> {
  _$SpeakerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? speakers = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SpeakarStatus,
      speakers: freezed == speakers
          ? _value.speakers
          : speakers // ignore: cast_nullable_to_non_nullable
              as List<Speaker>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SpeakerStateCopyWith<$Res>
    implements $SpeakerStateCopyWith<$Res> {
  factory _$$_SpeakerStateCopyWith(
          _$_SpeakerState value, $Res Function(_$_SpeakerState) then) =
      __$$_SpeakerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SpeakarStatus status, List<Speaker>? speakers, String? error});
}

/// @nodoc
class __$$_SpeakerStateCopyWithImpl<$Res>
    extends _$SpeakerStateCopyWithImpl<$Res, _$_SpeakerState>
    implements _$$_SpeakerStateCopyWith<$Res> {
  __$$_SpeakerStateCopyWithImpl(
      _$_SpeakerState _value, $Res Function(_$_SpeakerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? speakers = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_SpeakerState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SpeakarStatus,
      speakers: freezed == speakers
          ? _value._speakers
          : speakers // ignore: cast_nullable_to_non_nullable
              as List<Speaker>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SpeakerState implements _SpeakerState {
  const _$_SpeakerState(
      {required this.status, final List<Speaker>? speakers, this.error})
      : _speakers = speakers;

  @override
  final SpeakarStatus status;
  final List<Speaker>? _speakers;
  @override
  List<Speaker>? get speakers {
    final value = _speakers;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'SpeakerState(status: $status, speakers: $speakers, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpeakerState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._speakers, _speakers) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_speakers), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpeakerStateCopyWith<_$_SpeakerState> get copyWith =>
      __$$_SpeakerStateCopyWithImpl<_$_SpeakerState>(this, _$identity);
}

abstract class _SpeakerState implements SpeakerState {
  const factory _SpeakerState(
      {required final SpeakarStatus status,
      final List<Speaker>? speakers,
      final String? error}) = _$_SpeakerState;

  @override
  SpeakarStatus get status;
  @override
  List<Speaker>? get speakers;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_SpeakerStateCopyWith<_$_SpeakerState> get copyWith =>
      throw _privateConstructorUsedError;
}
