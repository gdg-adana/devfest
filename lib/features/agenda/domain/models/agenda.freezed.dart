// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'agenda.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Agenda {
  String get day => throw _privateConstructorUsedError;
  List<Session> get sessions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AgendaCopyWith<Agenda> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgendaCopyWith<$Res> {
  factory $AgendaCopyWith(Agenda value, $Res Function(Agenda) then) =
      _$AgendaCopyWithImpl<$Res, Agenda>;
  @useResult
  $Res call({String day, List<Session> sessions});
}

/// @nodoc
class _$AgendaCopyWithImpl<$Res, $Val extends Agenda>
    implements $AgendaCopyWith<$Res> {
  _$AgendaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? sessions = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      sessions: null == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<Session>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AgendaCopyWith<$Res> implements $AgendaCopyWith<$Res> {
  factory _$$_AgendaCopyWith(_$_Agenda value, $Res Function(_$_Agenda) then) =
      __$$_AgendaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String day, List<Session> sessions});
}

/// @nodoc
class __$$_AgendaCopyWithImpl<$Res>
    extends _$AgendaCopyWithImpl<$Res, _$_Agenda>
    implements _$$_AgendaCopyWith<$Res> {
  __$$_AgendaCopyWithImpl(_$_Agenda _value, $Res Function(_$_Agenda) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? sessions = null,
  }) {
    return _then(_$_Agenda(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      sessions: null == sessions
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<Session>,
    ));
  }
}

/// @nodoc

class _$_Agenda implements _Agenda {
  _$_Agenda({required this.day, required final List<Session> sessions})
      : _sessions = sessions;

  @override
  final String day;
  final List<Session> _sessions;
  @override
  List<Session> get sessions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  String toString() {
    return 'Agenda(day: $day, sessions: $sessions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Agenda &&
            (identical(other.day, day) || other.day == day) &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, day, const DeepCollectionEquality().hash(_sessions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AgendaCopyWith<_$_Agenda> get copyWith =>
      __$$_AgendaCopyWithImpl<_$_Agenda>(this, _$identity);
}

abstract class _Agenda implements Agenda {
  factory _Agenda(
      {required final String day,
      required final List<Session> sessions}) = _$_Agenda;

  @override
  String get day;
  @override
  List<Session> get sessions;
  @override
  @JsonKey(ignore: true)
  _$$_AgendaCopyWith<_$_Agenda> get copyWith =>
      throw _privateConstructorUsedError;
}
