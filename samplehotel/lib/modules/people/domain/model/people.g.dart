// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PeopleImpl _$$PeopleImplFromJson(Map<String, dynamic> json) => _$PeopleImpl(
      id: json['id'] as int?,
      firstname: json['firstname'] as String? ?? '',
      lastname: json['lastname'] as String? ?? '',
      address: json['address'] as String? ?? '',
      province: json['province'] as String? ?? '',
      isDelete: json['isDelete'] as bool? ?? false,
    );

Map<String, dynamic> _$$PeopleImplToJson(_$PeopleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'address': instance.address,
      'province': instance.province,
      'isDelete': instance.isDelete,
    };
