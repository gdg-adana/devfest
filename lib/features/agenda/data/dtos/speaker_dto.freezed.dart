// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'speaker_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpeakerDto _$SpeakerDtoFromJson(Map<String, dynamic> json) {
  return _SpeakerDto.fromJson(json);
}

/// @nodoc
mixin _$SpeakerDto {
  String get name => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get linkedin => throw _privateConstructorUsedError;
  String? get twitter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpeakerDtoCopyWith<SpeakerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeakerDtoCopyWith<$Res> {
  factory $SpeakerDtoCopyWith(
          SpeakerDto value, $Res Function(SpeakerDto) then) =
      _$SpeakerDtoCopyWithImpl<$Res, SpeakerDto>;
  @useResult
  $Res call(
      {String name,
      String company,
      String image,
      String title,
      String? linkedin,
      String? twitter});
}

/// @nodoc
class _$SpeakerDtoCopyWithImpl<$Res, $Val extends SpeakerDto>
    implements $SpeakerDtoCopyWith<$Res> {
  _$SpeakerDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? company = null,
    Object? image = null,
    Object? title = null,
    Object? linkedin = freezed,
    Object? twitter = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      linkedin: freezed == linkedin
          ? _value.linkedin
          : linkedin // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SpeakerDtoCopyWith<$Res>
    implements $SpeakerDtoCopyWith<$Res> {
  factory _$$_SpeakerDtoCopyWith(
          _$_SpeakerDto value, $Res Function(_$_SpeakerDto) then) =
      __$$_SpeakerDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String company,
      String image,
      String title,
      String? linkedin,
      String? twitter});
}

/// @nodoc
class __$$_SpeakerDtoCopyWithImpl<$Res>
    extends _$SpeakerDtoCopyWithImpl<$Res, _$_SpeakerDto>
    implements _$$_SpeakerDtoCopyWith<$Res> {
  __$$_SpeakerDtoCopyWithImpl(
      _$_SpeakerDto _value, $Res Function(_$_SpeakerDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? company = null,
    Object? image = null,
    Object? title = null,
    Object? linkedin = freezed,
    Object? twitter = freezed,
  }) {
    return _then(_$_SpeakerDto(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      linkedin: freezed == linkedin
          ? _value.linkedin
          : linkedin // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpeakerDto implements _SpeakerDto {
  _$_SpeakerDto(
      {required this.name,
      required this.company,
      required this.image,
      required this.title,
      this.linkedin,
      this.twitter});

  factory _$_SpeakerDto.fromJson(Map<String, dynamic> json) =>
      _$$_SpeakerDtoFromJson(json);

  @override
  final String name;
  @override
  final String company;
  @override
  final String image;
  @override
  final String title;
  @override
  final String? linkedin;
  @override
  final String? twitter;

  @override
  String toString() {
    return 'SpeakerDto(name: $name, company: $company, image: $image, title: $title, linkedin: $linkedin, twitter: $twitter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpeakerDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.linkedin, linkedin) ||
                other.linkedin == linkedin) &&
            (identical(other.twitter, twitter) || other.twitter == twitter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, company, image, title, linkedin, twitter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpeakerDtoCopyWith<_$_SpeakerDto> get copyWith =>
      __$$_SpeakerDtoCopyWithImpl<_$_SpeakerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpeakerDtoToJson(
      this,
    );
  }
}

abstract class _SpeakerDto implements SpeakerDto {
  factory _SpeakerDto(
      {required final String name,
      required final String company,
      required final String image,
      required final String title,
      final String? linkedin,
      final String? twitter}) = _$_SpeakerDto;

  factory _SpeakerDto.fromJson(Map<String, dynamic> json) =
      _$_SpeakerDto.fromJson;

  @override
  String get name;
  @override
  String get company;
  @override
  String get image;
  @override
  String get title;
  @override
  String? get linkedin;
  @override
  String? get twitter;
  @override
  @JsonKey(ignore: true)
  _$$_SpeakerDtoCopyWith<_$_SpeakerDto> get copyWith =>
      throw _privateConstructorUsedError;
}
