// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeatureCollection _$FeatureCollectionFromJson(Map<String, dynamic> json) {
  return FeatureCollection(
    type: json['type'] as String?,
    geocoding: json['geocoding'] == null
        ? null
        : Geocoding.fromJson(json['geocoding'] as Map<String, dynamic>),
    features: json['features']!= null ? (json['features'] as List).map((e) => e == null ? null : GeocodedFeature.fromJson(e as Map<String, dynamic>)).toList() : [],
  );
}

Map<String, dynamic> _$FeatureCollectionToJson(FeatureCollection instance) =>
    <String, dynamic>{
      'type': instance.type,
      'geocoding': instance.geocoding?.toJson(),
      'features': instance.features.map((e) => e?.toJson()).toList(),
    };
