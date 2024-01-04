// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserAddress _$$_UserAddressFromJson(Map<String, dynamic> json) =>
    _$_UserAddress(
      streetAddress: json['streetAddress'] as String,
      city: json['city'] as String,
      postCode: json['postCode'] as String,
    );

Map<String, dynamic> _$$_UserAddressToJson(_$_UserAddress instance) =>
    <String, dynamic>{
      'streetAddress': instance.streetAddress,
      'city': instance.city,
      'postCode': instance.postCode,
    };
