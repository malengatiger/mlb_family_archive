// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FamilyLocation _$FamilyLocationFromJson(Map<String, dynamic> json) =>
    FamilyLocation(
      json['familyName'] as String?,
      json['familyId'] as String?,
      json['dateRegistered'] as String?,
      json['dateUpdated'] as String?,
      json['userId'] as String?,
      (json['latitude'] as num?)?.toDouble(),
      (json['longitude'] as num?)?.toDouble(),
      json['geoHash'] as String?,
    );

Map<String, dynamic> _$FamilyLocationToJson(FamilyLocation instance) =>
    <String, dynamic>{
      'familyName': instance.familyName,
      'familyId': instance.familyId,
      'dateRegistered': instance.dateRegistered,
      'dateUpdated': instance.dateUpdated,
      'userId': instance.userId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'geoHash': instance.geoHash,
    };
