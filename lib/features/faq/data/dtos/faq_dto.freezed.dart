// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'faq_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FAQDto _$FAQDtoFromJson(Map<String, dynamic> json) {
  return _FAQDto.fromJson(json);
}

/// @nodoc
mixin _$FAQDto {
  String get question => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FAQDtoCopyWith<FAQDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FAQDtoCopyWith<$Res> {
  factory $FAQDtoCopyWith(FAQDto value, $Res Function(FAQDto) then) =
      _$FAQDtoCopyWithImpl<$Res, FAQDto>;
  @useResult
  $Res call({String question, String answer});
}

/// @nodoc
class _$FAQDtoCopyWithImpl<$Res, $Val extends FAQDto>
    implements $FAQDtoCopyWith<$Res> {
  _$FAQDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FAQDtoCopyWith<$Res> implements $FAQDtoCopyWith<$Res> {
  factory _$$_FAQDtoCopyWith(_$_FAQDto value, $Res Function(_$_FAQDto) then) =
      __$$_FAQDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String question, String answer});
}

/// @nodoc
class __$$_FAQDtoCopyWithImpl<$Res>
    extends _$FAQDtoCopyWithImpl<$Res, _$_FAQDto>
    implements _$$_FAQDtoCopyWith<$Res> {
  __$$_FAQDtoCopyWithImpl(_$_FAQDto _value, $Res Function(_$_FAQDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
  }) {
    return _then(_$_FAQDto(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FAQDto implements _FAQDto {
  _$_FAQDto({required this.question, required this.answer});

  factory _$_FAQDto.fromJson(Map<String, dynamic> json) =>
      _$$_FAQDtoFromJson(json);

  @override
  final String question;
  @override
  final String answer;

  @override
  String toString() {
    return 'FAQDto(question: $question, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FAQDto &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, question, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FAQDtoCopyWith<_$_FAQDto> get copyWith =>
      __$$_FAQDtoCopyWithImpl<_$_FAQDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FAQDtoToJson(
      this,
    );
  }
}

abstract class _FAQDto implements FAQDto {
  factory _FAQDto(
      {required final String question,
      required final String answer}) = _$_FAQDto;

  factory _FAQDto.fromJson(Map<String, dynamic> json) = _$_FAQDto.fromJson;

  @override
  String get question;
  @override
  String get answer;
  @override
  @JsonKey(ignore: true)
  _$$_FAQDtoCopyWith<_$_FAQDto> get copyWith =>
      throw _privateConstructorUsedError;
}
