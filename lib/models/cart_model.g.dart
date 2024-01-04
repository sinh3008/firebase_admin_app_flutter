// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartModel _$$_CartModelFromJson(Map<String, dynamic> json) => _$_CartModel(
      telescopeId: json['telescopeId'] as String,
      telescopeModel: json['telescopeModel'] as String,
      price: json['price'] as num,
      imageUrl: json['imageUrl'] as String,
      quantity: json['quantity'] as num? ?? 1,
    );

Map<String, dynamic> _$$_CartModelToJson(_$_CartModel instance) =>
    <String, dynamic>{
      'telescopeId': instance.telescopeId,
      'telescopeModel': instance.telescopeModel,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
      'quantity': instance.quantity,
    };
