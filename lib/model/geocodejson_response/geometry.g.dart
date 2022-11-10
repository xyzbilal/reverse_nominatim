// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geometry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Geometry _$GeometryFromJson(Map<String, dynamic> json) {
  return Geometry(
    coordinates:json['coordinates'] != null ? (json['coordinates'] as List).map((e) => (e as num).toDouble()).toList() :[],
    type: json['type'] as String?,
  );
}

Map<String, dynamic> _$GeometryToJson(Geometry instance) => <String, dynamic>{
      'coordinates': instance.coordinates,
      'type': instance.type,
    };
