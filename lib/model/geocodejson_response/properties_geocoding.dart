import 'administrative_level.dart';
import 'package:json_annotation/json_annotation.dart';
part 'properties_geocoding.g.dart';

@JsonSerializable(explicitToJson: true, nullable: true)
class PropertiesGeocoding {
  PropertiesGeocoding({
    this.type,
    this.accuracy,
    this.label,
    this.name,
    this.housenumber,
    this.street,
    this.locality,
    this.postcode,
    this.city,
    this.district,
    this.county,
    this.state,
    this.country,
    this.admin,
    this.geohash,
  });

  int accuracy;
  AdministrativeLevel admin;
  String type;
  String label;
  String name;
  String housenumber;
  String street;
  String locality;
  String postcode;
  String city;
  dynamic district;
  dynamic county;
  dynamic state;
  String country;
  String geohash;

  factory PropertiesGeocoding.fromJson(Map<String, dynamic> json) =>
      _$PropertiesGeocodingFromJson(json);

  Map<String, dynamic> toJson() => _$PropertiesGeocodingToJson(this);
}
