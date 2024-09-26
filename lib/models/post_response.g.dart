// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostResponse _$PostResponseFromJson(Map<String, dynamic> json) => PostResponse(
      json['memberName'] as String?,
      json['familyId'] as String?,
      json['memberId'] as String?,
      json['dateRegistered'] as String?,
      json['userId'] as String?,
      (json['mediaList'] as List<dynamic>)
          .map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['postResponseId'] as String?,
      json['postId'] as String?,
    );

Map<String, dynamic> _$PostResponseToJson(PostResponse instance) =>
    <String, dynamic>{
      'memberName': instance.memberName,
      'familyId': instance.familyId,
      'memberId': instance.memberId,
      'dateRegistered': instance.dateRegistered,
      'userId': instance.userId,
      'mediaList': instance.mediaList,
      'postResponseId': instance.postResponseId,
      'postId': instance.postId,
    };
