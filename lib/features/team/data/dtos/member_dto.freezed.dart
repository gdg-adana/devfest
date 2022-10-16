// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'member_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemberDto _$MemberDtoFromJson(Map<String, dynamic> json) {
  return _MemberDto.fromJson(json);
}

/// @nodoc
mixin _$MemberDto {
  String get name => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get linkedin => throw _privateConstructorUsedError;
  String get twitter => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemberDtoCopyWith<MemberDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberDtoCopyWith<$Res> {
  factory $MemberDtoCopyWith(MemberDto value, $Res Function(MemberDto) then) =
      _$MemberDtoCopyWithImpl<$Res, MemberDto>;
  @useResult
  $Res call(
      {String name,
      String title,
      String linkedin,
      String twitter,
      String image});
}

/// @nodoc
class _$MemberDtoCopyWithImpl<$Res, $Val extends MemberDto>
    implements $MemberDtoCopyWith<$Res> {
  _$MemberDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? title = null,
    Object? linkedin = null,
    Object? twitter = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      linkedin: null == linkedin
          ? _value.linkedin
          : linkedin // ignore: cast_nullable_to_non_nullable
              as String,
      twitter: null == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemberDtoCopyWith<$Res> implements $MemberDtoCopyWith<$Res> {
  factory _$$_MemberDtoCopyWith(
          _$_MemberDto value, $Res Function(_$_MemberDto) then) =
      __$$_MemberDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String title,
      String linkedin,
      String twitter,
      String image});
}

/// @nodoc
class __$$_MemberDtoCopyWithImpl<$Res>
    extends _$MemberDtoCopyWithImpl<$Res, _$_MemberDto>
    implements _$$_MemberDtoCopyWith<$Res> {
  __$$_MemberDtoCopyWithImpl(
      _$_MemberDto _value, $Res Function(_$_MemberDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? title = null,
    Object? linkedin = null,
    Object? twitter = null,
    Object? image = null,
  }) {
    return _then(_$_MemberDto(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      linkedin: null == linkedin
          ? _value.linkedin
          : linkedin // ignore: cast_nullable_to_non_nullable
              as String,
      twitter: null == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MemberDto implements _MemberDto {
  _$_MemberDto(
      {required this.name,
      required this.title,
      required this.linkedin,
      required this.twitter,
      required this.image});

  factory _$_MemberDto.fromJson(Map<String, dynamic> json) =>
      _$$_MemberDtoFromJson(json);

  @override
  final String name;
  @override
  final String title;
  @override
  final String linkedin;
  @override
  final String twitter;
  @override
  final String image;

  @override
  String toString() {
    return 'MemberDto(name: $name, title: $title, linkedin: $linkedin, twitter: $twitter, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.linkedin, linkedin) ||
                other.linkedin == linkedin) &&
            (identical(other.twitter, twitter) || other.twitter == twitter) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, title, linkedin, twitter, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemberDtoCopyWith<_$_MemberDto> get copyWith =>
      __$$_MemberDtoCopyWithImpl<_$_MemberDto>(this, _$identity);
}

abstract class _MemberDto implements MemberDto {
  factory _MemberDto(
      {required final String name,
      required final String title,
      required final String linkedin,
      required final String twitter,
      required final String image}) = _$_MemberDto;

  factory _MemberDto.fromJson(Map<String, dynamic> json) =
      _$_MemberDto.fromJson;

  @override
  String get name;
  @override
  String get title;
  @override
  String get linkedin;
  @override
  String get twitter;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_MemberDtoCopyWith<_$_MemberDto> get copyWith =>
      throw _privateConstructorUsedError;
}
