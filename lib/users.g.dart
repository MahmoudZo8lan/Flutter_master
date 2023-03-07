// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Users _$UsersFromJson(Map<String, dynamic> json) => Users(
      username: json['username'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$UsersToJson(Users instance) => <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
    };
