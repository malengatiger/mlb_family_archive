// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      json['firstName'] as String?,
      json['middleNames'] as String?,
      json['lastName'] as String?,
      json['indicator'] as String?,
      json['email'] as String?,
      json['cellphone'] as String?,
      json['userId'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'middleNames': instance.middleNames,
      'lastName': instance.lastName,
      'indicator': instance.indicator,
      'email': instance.email,
      'cellphone': instance.cellphone,
      'userId': instance.userId,
    };
