// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoInfo _$$_TodoInfoFromJson(Map<String, dynamic> json) => _$_TodoInfo(
      id: json['id'] as int,
      description: json['description'] as String?,
      isCompleted: json['isCompleted'] as bool?,
    );

Map<String, dynamic> _$$_TodoInfoToJson(_$_TodoInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'isCompleted': instance.isCompleted,
    };
