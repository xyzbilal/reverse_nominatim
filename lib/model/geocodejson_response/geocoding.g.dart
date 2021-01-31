// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocoding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Geocoding _$GeocodingFromJson(Map<String, dynamic> json) {
  return Geocoding(
    version: json['version'] as String,
    licence: json['licence'] as String,
    attribution: json['attribution'] as String,
    query: json['query'] as String,
  );
}

Map<String, dynamic> _$GeocodingToJson(Geocoding instance) => <String, dynamic>{
      'version': instance.version,
      'licence': instance.licence,
      'attribution': instance.attribution,
      'query': instance.query,
    };
