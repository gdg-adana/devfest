// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speaker_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpeakerDto _$$_SpeakerDtoFromJson(Map<String, dynamic> json) =>
    _$_SpeakerDto(
      name: json['name'] as String,
      company: json['company'] as String,
      image: json['image'] as String,
      title: json['title'] as String,
      linkedin: json['linkedin'] as String?,
      twitter: json['twitter'] as String?,
    );

Map<String, dynamic> _$$_SpeakerDtoToJson(_$_SpeakerDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'company': instance.company,
      'image': instance.image,
      'title': instance.title,
      'linkedin': instance.linkedin,
      'twitter': instance.twitter,
    };
