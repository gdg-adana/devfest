// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agenda_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AgendaDto _$$_AgendaDtoFromJson(Map<String, dynamic> json) => _$_AgendaDto(
      day: json['day'] as String,
      sessions: (json['sessions'] as List<dynamic>)
          .map((e) => SessionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AgendaDtoToJson(_$_AgendaDto instance) =>
    <String, dynamic>{
      'day': instance.day,
      'sessions': instance.sessions,
    };
