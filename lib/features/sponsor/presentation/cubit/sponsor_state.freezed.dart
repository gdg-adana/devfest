// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sponsor_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SponsorState {
  SponsorStatus get status => throw _privateConstructorUsedError;
  List<Sponsor>? get sponsors => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SponsorStateCopyWith<SponsorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SponsorStateCopyWith<$Res> {
  factory $SponsorStateCopyWith(
          SponsorState value, $Res Function(SponsorState) then) =
      _$SponsorStateCopyWithImpl<$Res, SponsorState>;
  @useResult
  $Res call({SponsorStatus status, List<Sponsor>? sponsors, String? error});
}

/// @nodoc
class _$SponsorStateCopyWithImpl<$Res, $Val extends SponsorState>
    implements $SponsorStateCopyWith<$Res> {
  _$SponsorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? sponsors = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SponsorStatus,
      sponsors: freezed == sponsors
          ? _value.sponsors
          : sponsors // ignore: cast_nullable_to_non_nullable
              as List<Sponsor>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SponsorStateCopyWith<$Res>
    implements $SponsorStateCopyWith<$Res> {
  factory _$$_SponsorStateCopyWith(
          _$_SponsorState value, $Res Function(_$_SponsorState) then) =
      __$$_SponsorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SponsorStatus status, List<Sponsor>? sponsors, String? error});
}

/// @nodoc
class __$$_SponsorStateCopyWithImpl<$Res>
    extends _$SponsorStateCopyWithImpl<$Res, _$_SponsorState>
    implements _$$_SponsorStateCopyWith<$Res> {
  __$$_SponsorStateCopyWithImpl(
      _$_SponsorState _value, $Res Function(_$_SponsorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? sponsors = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_SponsorState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SponsorStatus,
      sponsors: freezed == sponsors
          ? _value._sponsors
          : sponsors // ignore: cast_nullable_to_non_nullable
              as List<Sponsor>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SponsorState implements _SponsorState {
  const _$_SponsorState(
      {required this.status, final List<Sponsor>? sponsors, this.error})
      : _sponsors = sponsors;

  @override
  final SponsorStatus status;
  final List<Sponsor>? _sponsors;
  @override
  List<Sponsor>? get sponsors {
    final value = _sponsors;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'SponsorState(status: $status, sponsors: $sponsors, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SponsorState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._sponsors, _sponsors) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_sponsors), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SponsorStateCopyWith<_$_SponsorState> get copyWith =>
      __$$_SponsorStateCopyWithImpl<_$_SponsorState>(this, _$identity);
}

abstract class _SponsorState implements SponsorState {
  const factory _SponsorState(
      {required final SponsorStatus status,
      final List<Sponsor>? sponsors,
      final String? error}) = _$_SponsorState;

  @override
  SponsorStatus get status;
  @override
  List<Sponsor>? get sponsors;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_SponsorStateCopyWith<_$_SponsorState> get copyWith =>
      throw _privateConstructorUsedError;
}
