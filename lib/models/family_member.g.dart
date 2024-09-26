// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FamilyMember _$FamilyMemberFromJson(Map<String, dynamic> json) => FamilyMember(
      json['familyId'] as String?,
      json['familyName'] as String?,
      json['dateRegistered'] as String?,
      json['dateUpdated'] as String?,
      json['email'] as String?,
      json['cellphone'] as String?,
      json['familyMemberId'] as String,
      json['dateOfBirth'] as String,
      json['dateOfDeath'] as String,
      $enumDecodeNullable(_$MemberTypeEnumMap, json['memberType']),
      $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      json['firstName'] as String,
      json['middleNames'] as String,
      json['lastName'] as String,
    );

Map<String, dynamic> _$FamilyMemberToJson(FamilyMember instance) =>
    <String, dynamic>{
      'familyId': instance.familyId,
      'familyName': instance.familyName,
      'dateRegistered': instance.dateRegistered,
      'dateUpdated': instance.dateUpdated,
      'email': instance.email,
      'cellphone': instance.cellphone,
      'familyMemberId': instance.familyMemberId,
      'dateOfBirth': instance.dateOfBirth,
      'dateOfDeath': instance.dateOfDeath,
      'memberType': _$MemberTypeEnumMap[instance.memberType],
      'gender': _$GenderEnumMap[instance.gender],
      'firstName': instance.firstName,
      'middleNames': instance.middleNames,
      'lastName': instance.lastName,
    };

const _$MemberTypeEnumMap = {
  MemberType.parent: 'parent',
  MemberType.child: 'child',
};

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
};
