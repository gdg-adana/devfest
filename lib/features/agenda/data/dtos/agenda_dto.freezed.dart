// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'agenda_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AgendaDto _$AgendaDtoFromJson(Map<String, dynamic> json) {
  return _AgendaDto.fromJson(json);
}

/// @nodoc
mixin _$AgendaDto {
  String get day => throw _privateConstructorUsedError;
  List<SessionDto> get sessions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgendaDtoCopyWith<AgendaDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgendaDtoCopyWith<$Res> {
  factory $AgendaDtoCopyWith(AgendaDto value, $Res Function(AgendaDto) then) =
      _$AgendaDtoCopyWithImpl<$Res, AgendaDto>;
  @useResult
  $Res call({String day, List<SessionDto> sessions});
}

/// @nodoc
class _$AgendaDtoCopyWithImpl<$Res, $Val extends AgendaDto>
    implements $AgendaDtoCopyWith<$Res> {
  _$AgendaDtoCopyWithImpl(this._value, this._then);

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
              as List<SessionDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AgendaDtoCopyWith<$Res> implements $AgendaDtoCopyWith<$Res> {
  factory _$$_AgendaDtoCopyWith(
          _$_AgendaDto value, $Res Function(_$_AgendaDto) then) =
      __$$_AgendaDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String day, List<SessionDto> sessions});
}

/// @nodoc
class __$$_AgendaDtoCopyWithImpl<$Res>
    extends _$AgendaDtoCopyWithImpl<$Res, _$_AgendaDto>
    implements _$$_AgendaDtoCopyWith<$Res> {
  __$$_AgendaDtoCopyWithImpl(
      _$_AgendaDto _value, $Res Function(_$_AgendaDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? sessions = null,
  }) {
    return _then(_$_AgendaDto(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      sessions: null == sessions
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SessionDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AgendaDto implements _AgendaDto {
  _$_AgendaDto({required this.day, required final List<SessionDto> sessions})
      : _sessions = sessions;

  factory _$_AgendaDto.fromJson(Map<String, dynamic> json) =>
      _$$_AgendaDtoFromJson(json);

  @override
  final String day;
  final List<SessionDto> _sessions;
  @override
  List<SessionDto> get sessions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  String toString() {
    return 'AgendaDto(day: $day, sessions: $sessions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AgendaDto &&
            (identical(other.day, day) || other.day == day) &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, day, const DeepCollectionEquality().hash(_sessions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AgendaDtoCopyWith<_$_AgendaDto> get copyWith =>
      __$$_AgendaDtoCopyWithImpl<_$_AgendaDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AgendaDtoToJson(
      this,
    );
  }
}

abstract class _AgendaDto implements AgendaDto {
  factory _AgendaDto(
      {required final String day,
      required final List<SessionDto> sessions}) = _$_AgendaDto;

  factory _AgendaDto.fromJson(Map<String, dynamic> json) =
      _$_AgendaDto.fromJson;

  @override
  String get day;
  @override
  List<SessionDto> get sessions;
  @override
  @JsonKey(ignore: true)
  _$$_AgendaDtoCopyWith<_$_AgendaDto> get copyWith =>
      throw _privateConstructorUsedError;
}
