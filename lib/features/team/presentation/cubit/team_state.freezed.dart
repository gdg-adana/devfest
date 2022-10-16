// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'team_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TeamState {
  TeamStatus get status => throw _privateConstructorUsedError;
  List<Member>? get members => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeamStateCopyWith<TeamState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamStateCopyWith<$Res> {
  factory $TeamStateCopyWith(TeamState value, $Res Function(TeamState) then) =
      _$TeamStateCopyWithImpl<$Res, TeamState>;
  @useResult
  $Res call({TeamStatus status, List<Member>? members, String? error});
}

/// @nodoc
class _$TeamStateCopyWithImpl<$Res, $Val extends TeamState>
    implements $TeamStateCopyWith<$Res> {
  _$TeamStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? members = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TeamStatus,
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TeamStateCopyWith<$Res> implements $TeamStateCopyWith<$Res> {
  factory _$$_TeamStateCopyWith(
          _$_TeamState value, $Res Function(_$_TeamState) then) =
      __$$_TeamStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TeamStatus status, List<Member>? members, String? error});
}

/// @nodoc
class __$$_TeamStateCopyWithImpl<$Res>
    extends _$TeamStateCopyWithImpl<$Res, _$_TeamState>
    implements _$$_TeamStateCopyWith<$Res> {
  __$$_TeamStateCopyWithImpl(
      _$_TeamState _value, $Res Function(_$_TeamState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? members = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_TeamState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TeamStatus,
      members: freezed == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TeamState implements _TeamState {
  const _$_TeamState(
      {required this.status, final List<Member>? members, this.error})
      : _members = members;

  @override
  final TeamStatus status;
  final List<Member>? _members;
  @override
  List<Member>? get members {
    final value = _members;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'TeamState(status: $status, members: $members, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TeamState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_members), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TeamStateCopyWith<_$_TeamState> get copyWith =>
      __$$_TeamStateCopyWithImpl<_$_TeamState>(this, _$identity);
}

abstract class _TeamState implements TeamState {
  const factory _TeamState(
      {required final TeamStatus status,
      final List<Member>? members,
      final String? error}) = _$_TeamState;

  @override
  TeamStatus get status;
  @override
  List<Member>? get members;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_TeamStateCopyWith<_$_TeamState> get copyWith =>
      throw _privateConstructorUsedError;
}
