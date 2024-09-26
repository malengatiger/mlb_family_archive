// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) => Post(
      json['memberName'] as String?,
      json['familyId'] as String?,
      json['memberId'] as String?,
      json['dateRegistered'] as String?,
      json['dateUpdated'] as String?,
      json['userId'] as String?,
      (json['mediaList'] as List<dynamic>)
          .map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      $enumDecodeNullable(_$PostTypeEnumMap, json['postType']),
      json['title'] as String?,
      json['description'] as String?,
      json['postId'] as String?,
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'memberName': instance.memberName,
      'familyId': instance.familyId,
      'memberId': instance.memberId,
      'dateRegistered': instance.dateRegistered,
      'dateUpdated': instance.dateUpdated,
      'userId': instance.userId,
      'mediaList': instance.mediaList,
      'postType': _$PostTypeEnumMap[instance.postType],
      'title': instance.title,
      'description': instance.description,
      'postId': instance.postId,
    };

const _$PostTypeEnumMap = {
  PostType.documentUpload: 'documentUpload',
  PostType.imageUpload: 'imageUpload',
  PostType.videoUpload: 'videoUpload',
  PostType.audioUpload: 'audioUpload',
  PostType.text: 'text',
  PostType.announcement: 'announcement',
  PostType.event: 'event',
  PostType.birth: 'birth',
  PostType.death: 'death',
};
