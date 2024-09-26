// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberImage _$MemberImageFromJson(Map<String, dynamic> json) => MemberImage(
      json['url'] as String?,
      json['memberName'] as String?,
      json['dateRegistered'] as String?,
      json['thumbUrl'] as String?,
      json['memberId'] as String,
      json['familyId'] as String,
    );

Map<String, dynamic> _$MemberImageToJson(MemberImage instance) =>
    <String, dynamic>{
      'url': instance.url,
      'memberName': instance.memberName,
      'dateRegistered': instance.dateRegistered,
      'thumbUrl': instance.thumbUrl,
      'memberId': instance.memberId,
      'familyId': instance.familyId,
    };
