import 'package:json_annotation/json_annotation.dart';

part 'family_location.g.dart';

@JsonSerializable()
class FamilyLocation {
  String? familyName, familyId, dateRegistered, dateUpdated;
  String? userId;
  double? latitude, longitude;
  String? geoHash;


  FamilyLocation(this.familyName, this.familyId, this.dateRegistered,
      this.dateUpdated, this.userId, this.latitude, this.longitude, this.geoHash);

  factory FamilyLocation.fromJson(Map<String, dynamic> json) => _$FamilyLocationFromJson(json);

  Map<String, dynamic> toJson() => _$FamilyLocationToJson(this);
}
