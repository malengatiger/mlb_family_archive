// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberLocation _$MemberLocationFromJson(Map<String, dynamic> json) =>
    MemberLocation(
      json['memberName'] as String?,
      json['memberId'] as String?,
      json['dateRegistered'] as String?,
      json['userId'] as String?,
      (json['latitude'] as num?)?.toDouble(),
      (json['longitude'] as num?)?.toDouble(),
      json['hash'] as String?,
    );

Map<String, dynamic> _$MemberLocationToJson(MemberLocation instance) =>
    <String, dynamic>{
      'memberName': instance.memberName,
      'memberId': instance.memberId,
      'dateRegistered': instance.dateRegistered,
      'userId': instance.userId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'hash': instance.hash,
    };
