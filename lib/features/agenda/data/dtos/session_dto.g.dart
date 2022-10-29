// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SessionDto _$$_SessionDtoFromJson(Map<String, dynamic> json) =>
    _$_SessionDto(
      title: json['title'] as String,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      order: json['order'] as int,
      speakerDto: json['speaker'] == null
          ? null
          : SpeakerDto.fromJson(json['speaker'] as Map<String, dynamic>),
      desc: json['desc'] as String?,
    );

Map<String, dynamic> _$$_SessionDtoToJson(_$_SessionDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'order': instance.order,
      'speaker': instance.speakerDto,
      'desc': instance.desc,
    };
