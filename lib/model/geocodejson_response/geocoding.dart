import 'package:json_annotation/json_annotation.dart';
part 'geocoding.g.dart';

@JsonSerializable(explicitToJson: true, nullable: true)
class Geocoding {
  Geocoding({
    this.version,
    this.licence,
    this.attribution,
    this.query,
  });

  String? version;
  String? licence;
  String? attribution;
  String? query;

  factory Geocoding.fromJson(Map<String, dynamic> json) =>
      _$GeocodingFromJson(json);

  Map<String, dynamic> toJson() => _$GeocodingToJson(this);
}
