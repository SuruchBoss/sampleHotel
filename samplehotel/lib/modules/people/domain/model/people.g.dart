// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PeopleImpl _$$PeopleImplFromJson(Map<String, dynamic> json) => _$PeopleImpl(
      id: json['id'] as int?,
      imgPath: json['imgPath'] as String? ?? "assets/peopleImg/ppl01.jpg",
      firstname: json['firstname'] as String? ?? '',
      lastname: json['lastname'] as String? ?? '',
      address: json['address'] as String? ?? '',
      position: json['position'] as String? ?? 'Employee',
      province: json['province'] as String? ?? '',
      isDelete: json['isDelete'] as bool? ?? false,
    );

Map<String, dynamic> _$$PeopleImplToJson(_$PeopleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imgPath': instance.imgPath,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'address': instance.address,
      'position': instance.position,
      'province': instance.province,
      'isDelete': instance.isDelete,
    };
