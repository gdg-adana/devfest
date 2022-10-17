// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'faq_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FAQState {
  FAQStatus get status => throw _privateConstructorUsedError;
  List<FAQ>? get faq => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FAQStateCopyWith<FAQState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FAQStateCopyWith<$Res> {
  factory $FAQStateCopyWith(FAQState value, $Res Function(FAQState) then) =
      _$FAQStateCopyWithImpl<$Res, FAQState>;
  @useResult
  $Res call({FAQStatus status, List<FAQ>? faq, String? error});
}

/// @nodoc
class _$FAQStateCopyWithImpl<$Res, $Val extends FAQState>
    implements $FAQStateCopyWith<$Res> {
  _$FAQStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? faq = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FAQStatus,
      faq: freezed == faq
          ? _value.faq
          : faq // ignore: cast_nullable_to_non_nullable
              as List<FAQ>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FAQStateCopyWith<$Res> implements $FAQStateCopyWith<$Res> {
  factory _$$_FAQStateCopyWith(
          _$_FAQState value, $Res Function(_$_FAQState) then) =
      __$$_FAQStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FAQStatus status, List<FAQ>? faq, String? error});
}

/// @nodoc
class __$$_FAQStateCopyWithImpl<$Res>
    extends _$FAQStateCopyWithImpl<$Res, _$_FAQState>
    implements _$$_FAQStateCopyWith<$Res> {
  __$$_FAQStateCopyWithImpl(
      _$_FAQState _value, $Res Function(_$_FAQState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? faq = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_FAQState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FAQStatus,
      faq: freezed == faq
          ? _value._faq
          : faq // ignore: cast_nullable_to_non_nullable
              as List<FAQ>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FAQState implements _FAQState {
  const _$_FAQState({required this.status, final List<FAQ>? faq, this.error})
      : _faq = faq;

  @override
  final FAQStatus status;
  final List<FAQ>? _faq;
  @override
  List<FAQ>? get faq {
    final value = _faq;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'FAQState(status: $status, faq: $faq, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FAQState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._faq, _faq) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_faq), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FAQStateCopyWith<_$_FAQState> get copyWith =>
      __$$_FAQStateCopyWithImpl<_$_FAQState>(this, _$identity);
}

abstract class _FAQState implements FAQState {
  const factory _FAQState(
      {required final FAQStatus status,
      final List<FAQ>? faq,
      final String? error}) = _$_FAQState;

  @override
  FAQStatus get status;
  @override
  List<FAQ>? get faq;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_FAQStateCopyWith<_$_FAQState> get copyWith =>
      throw _privateConstructorUsedError;
}
