// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RatingModel _$$_RatingModelFromJson(Map<String, dynamic> json) =>
    _$_RatingModel(
      appUser: AppUser.fromJson(json['appUser'] as Map<String, dynamic>),
      rating: json['rating'] as num,
    );

Map<String, dynamic> _$$_RatingModelToJson(_$_RatingModel instance) =>
    <String, dynamic>{
      'appUser': instance.appUser.toJson(),
      'rating': instance.rating,
    };
