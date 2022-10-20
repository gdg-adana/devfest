// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'agenda_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AgendaState {
  AgendaStatus get status => throw _privateConstructorUsedError;
  List<Agenda>? get agendaList => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AgendaStateCopyWith<AgendaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgendaStateCopyWith<$Res> {
  factory $AgendaStateCopyWith(
          AgendaState value, $Res Function(AgendaState) then) =
      _$AgendaStateCopyWithImpl<$Res, AgendaState>;
  @useResult
  $Res call({AgendaStatus status, List<Agenda>? agendaList, String? error});
}

/// @nodoc
class _$AgendaStateCopyWithImpl<$Res, $Val extends AgendaState>
    implements $AgendaStateCopyWith<$Res> {
  _$AgendaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? agendaList = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AgendaStatus,
      agendaList: freezed == agendaList
          ? _value.agendaList
          : agendaList // ignore: cast_nullable_to_non_nullable
              as List<Agenda>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AgendaStateCopyWith<$Res>
    implements $AgendaStateCopyWith<$Res> {
  factory _$$_AgendaStateCopyWith(
          _$_AgendaState value, $Res Function(_$_AgendaState) then) =
      __$$_AgendaStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AgendaStatus status, List<Agenda>? agendaList, String? error});
}

/// @nodoc
class __$$_AgendaStateCopyWithImpl<$Res>
    extends _$AgendaStateCopyWithImpl<$Res, _$_AgendaState>
    implements _$$_AgendaStateCopyWith<$Res> {
  __$$_AgendaStateCopyWithImpl(
      _$_AgendaState _value, $Res Function(_$_AgendaState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? agendaList = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_AgendaState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AgendaStatus,
      agendaList: freezed == agendaList
          ? _value._agendaList
          : agendaList // ignore: cast_nullable_to_non_nullable
              as List<Agenda>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AgendaState implements _AgendaState {
  const _$_AgendaState(
      {required this.status, final List<Agenda>? agendaList, this.error})
      : _agendaList = agendaList;

  @override
  final AgendaStatus status;
  final List<Agenda>? _agendaList;
  @override
  List<Agenda>? get agendaList {
    final value = _agendaList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'AgendaState(status: $status, agendaList: $agendaList, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AgendaState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._agendaList, _agendaList) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_agendaList), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AgendaStateCopyWith<_$_AgendaState> get copyWith =>
      __$$_AgendaStateCopyWithImpl<_$_AgendaState>(this, _$identity);
}

abstract class _AgendaState implements AgendaState {
  const factory _AgendaState(
      {required final AgendaStatus status,
      final List<Agenda>? agendaList,
      final String? error}) = _$_AgendaState;

  @override
  AgendaStatus get status;
  @override
  List<Agenda>? get agendaList;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_AgendaStateCopyWith<_$_AgendaState> get copyWith =>
      throw _privateConstructorUsedError;
}
