// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sponsor_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SponsorDto _$SponsorDtoFromJson(Map<String, dynamic> json) {
  return _SponsorDto.fromJson(json);
}

/// @nodoc
mixin _$SponsorDto {
  String get image => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SponsorDtoCopyWith<SponsorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SponsorDtoCopyWith<$Res> {
  factory $SponsorDtoCopyWith(
          SponsorDto value, $Res Function(SponsorDto) then) =
      _$SponsorDtoCopyWithImpl<$Res, SponsorDto>;
  @useResult
  $Res call({String image, String url, String name, String type});
}

/// @nodoc
class _$SponsorDtoCopyWithImpl<$Res, $Val extends SponsorDto>
    implements $SponsorDtoCopyWith<$Res> {
  _$SponsorDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? url = null,
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SponsorDtoCopyWith<$Res>
    implements $SponsorDtoCopyWith<$Res> {
  factory _$$_SponsorDtoCopyWith(
          _$_SponsorDto value, $Res Function(_$_SponsorDto) then) =
      __$$_SponsorDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String image, String url, String name, String type});
}

/// @nodoc
class __$$_SponsorDtoCopyWithImpl<$Res>
    extends _$SponsorDtoCopyWithImpl<$Res, _$_SponsorDto>
    implements _$$_SponsorDtoCopyWith<$Res> {
  __$$_SponsorDtoCopyWithImpl(
      _$_SponsorDto _value, $Res Function(_$_SponsorDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? url = null,
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_$_SponsorDto(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SponsorDto implements _SponsorDto {
  _$_SponsorDto(
      {required this.image,
      required this.url,
      required this.name,
      required this.type});

  factory _$_SponsorDto.fromJson(Map<String, dynamic> json) =>
      _$$_SponsorDtoFromJson(json);

  @override
  final String image;
  @override
  final String url;
  @override
  final String name;
  @override
  final String type;

  @override
  String toString() {
    return 'SponsorDto(image: $image, url: $url, name: $name, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SponsorDto &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, image, url, name, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SponsorDtoCopyWith<_$_SponsorDto> get copyWith =>
      __$$_SponsorDtoCopyWithImpl<_$_SponsorDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SponsorDtoToJson(
      this,
    );
  }
}

abstract class _SponsorDto implements SponsorDto {
  factory _SponsorDto(
      {required final String image,
      required final String url,
      required final String name,
      required final String type}) = _$_SponsorDto;

  factory _SponsorDto.fromJson(Map<String, dynamic> json) =
      _$_SponsorDto.fromJson;

  @override
  String get image;
  @override
  String get url;
  @override
  String get name;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_SponsorDtoCopyWith<_$_SponsorDto> get copyWith =>
      throw _privateConstructorUsedError;
}
