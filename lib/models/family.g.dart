// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Family _$FamilyFromJson(Map<String, dynamic> json) => Family(
      json['familyName'] as String?,
      json['familyId'] as String?,
      json['dateRegistered'] as String?,
      json['dateUpdated'] as String?,
      json['userId'] as String?,
      json['parentFamilyId'] as String?,
      json['parentFamilyName'] as String?,
      json['isRootFamily'] as bool,
    );

Map<String, dynamic> _$FamilyToJson(Family instance) => <String, dynamic>{
      'familyName': instance.familyName,
      'familyId': instance.familyId,
      'dateRegistered': instance.dateRegistered,
      'dateUpdated': instance.dateUpdated,
      'userId': instance.userId,
      'parentFamilyId': instance.parentFamilyId,
      'parentFamilyName': instance.parentFamilyName,
      'isRootFamily': instance.isRootFamily,
    };
