// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Media _$MediaFromJson(Map<String, dynamic> json) => Media(
      json['mediaId'] as String?,
      json['dateRegistered'] as String?,
      json['dateUpdated'] as String?,
      json['title'] as String?,
      json['description'] as String?,
      json['postId'] as String?,
      json['userId'] as String?,
      json['url'] as String?,
      json['thumbUrl'] as String?,
      $enumDecodeNullable(_$MediaTypeEnumMap, json['mediaType']),
      json['filePath'] as String?,
    );

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'mediaId': instance.mediaId,
      'dateRegistered': instance.dateRegistered,
      'dateUpdated': instance.dateUpdated,
      'title': instance.title,
      'description': instance.description,
      'postId': instance.postId,
      'userId': instance.userId,
      'url': instance.url,
      'thumbUrl': instance.thumbUrl,
      'filePath': instance.filePath,
      'mediaType': _$MediaTypeEnumMap[instance.mediaType],
    };

const _$MediaTypeEnumMap = {
  MediaType.document: 'document',
  MediaType.image: 'image',
  MediaType.video: 'video',
  MediaType.audio: 'audio',
};
