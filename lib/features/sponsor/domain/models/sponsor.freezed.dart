// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sponsor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Sponsor {
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SponsorCopyWith<Sponsor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SponsorCopyWith<$Res> {
  factory $SponsorCopyWith(Sponsor value, $Res Function(Sponsor) then) =
      _$SponsorCopyWithImpl<$Res, Sponsor>;
  @useResult
  $Res call({String name, String image, String url, String type});
}

/// @nodoc
class _$SponsorCopyWithImpl<$Res, $Val extends Sponsor>
    implements $SponsorCopyWith<$Res> {
  _$SponsorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? url = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SponsorCopyWith<$Res> implements $SponsorCopyWith<$Res> {
  factory _$$_SponsorCopyWith(
          _$_Sponsor value, $Res Function(_$_Sponsor) then) =
      __$$_SponsorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String image, String url, String type});
}

/// @nodoc
class __$$_SponsorCopyWithImpl<$Res>
    extends _$SponsorCopyWithImpl<$Res, _$_Sponsor>
    implements _$$_SponsorCopyWith<$Res> {
  __$$_SponsorCopyWithImpl(_$_Sponsor _value, $Res Function(_$_Sponsor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? url = null,
    Object? type = null,
  }) {
    return _then(_$_Sponsor(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Sponsor implements _Sponsor {
  _$_Sponsor(
      {required this.name,
      required this.image,
      required this.url,
      required this.type});

  @override
  final String name;
  @override
  final String image;
  @override
  final String url;
  @override
  final String type;

  @override
  String toString() {
    return 'Sponsor(name: $name, image: $image, url: $url, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sponsor &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, image, url, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SponsorCopyWith<_$_Sponsor> get copyWith =>
      __$$_SponsorCopyWithImpl<_$_Sponsor>(this, _$identity);
}

abstract class _Sponsor implements Sponsor {
  factory _Sponsor(
      {required final String name,
      required final String image,
      required final String url,
      required final String type}) = _$_Sponsor;

  @override
  String get name;
  @override
  String get image;
  @override
  String get url;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_SponsorCopyWith<_$_Sponsor> get copyWith =>
      throw _privateConstructorUsedError;
}
