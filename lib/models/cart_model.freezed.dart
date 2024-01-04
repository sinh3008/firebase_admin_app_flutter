// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartModel _$CartModelFromJson(Map<String, dynamic> json) {
  return _CartModel.fromJson(json);
}

/// @nodoc
mixin _$CartModel {
  String get telescopeId => throw _privateConstructorUsedError;
  set telescopeId(String value) => throw _privateConstructorUsedError;
  String get telescopeModel => throw _privateConstructorUsedError;
  set telescopeModel(String value) => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;
  set price(num value) => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  set imageUrl(String value) => throw _privateConstructorUsedError;
  num get quantity => throw _privateConstructorUsedError;
  set quantity(num value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartModelCopyWith<CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelCopyWith<$Res> {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) then) =
      _$CartModelCopyWithImpl<$Res, CartModel>;
  @useResult
  $Res call(
      {String telescopeId,
      String telescopeModel,
      num price,
      String imageUrl,
      num quantity});
}

/// @nodoc
class _$CartModelCopyWithImpl<$Res, $Val extends CartModel>
    implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? telescopeId = null,
    Object? telescopeModel = null,
    Object? price = null,
    Object? imageUrl = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      telescopeId: null == telescopeId
          ? _value.telescopeId
          : telescopeId // ignore: cast_nullable_to_non_nullable
              as String,
      telescopeModel: null == telescopeModel
          ? _value.telescopeModel
          : telescopeModel // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartModelCopyWith<$Res> implements $CartModelCopyWith<$Res> {
  factory _$$_CartModelCopyWith(
          _$_CartModel value, $Res Function(_$_CartModel) then) =
      __$$_CartModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String telescopeId,
      String telescopeModel,
      num price,
      String imageUrl,
      num quantity});
}

/// @nodoc
class __$$_CartModelCopyWithImpl<$Res>
    extends _$CartModelCopyWithImpl<$Res, _$_CartModel>
    implements _$$_CartModelCopyWith<$Res> {
  __$$_CartModelCopyWithImpl(
      _$_CartModel _value, $Res Function(_$_CartModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? telescopeId = null,
    Object? telescopeModel = null,
    Object? price = null,
    Object? imageUrl = null,
    Object? quantity = null,
  }) {
    return _then(_$_CartModel(
      telescopeId: null == telescopeId
          ? _value.telescopeId
          : telescopeId // ignore: cast_nullable_to_non_nullable
              as String,
      telescopeModel: null == telescopeModel
          ? _value.telescopeModel
          : telescopeModel // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartModel implements _CartModel {
  _$_CartModel(
      {required this.telescopeId,
      required this.telescopeModel,
      required this.price,
      required this.imageUrl,
      this.quantity = 1});

  factory _$_CartModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartModelFromJson(json);

  @override
  String telescopeId;
  @override
  String telescopeModel;
  @override
  num price;
  @override
  String imageUrl;
  @override
  @JsonKey()
  num quantity;

  @override
  String toString() {
    return 'CartModel(telescopeId: $telescopeId, telescopeModel: $telescopeModel, price: $price, imageUrl: $imageUrl, quantity: $quantity)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartModelCopyWith<_$_CartModel> get copyWith =>
      __$$_CartModelCopyWithImpl<_$_CartModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartModelToJson(
      this,
    );
  }
}

abstract class _CartModel implements CartModel {
  factory _CartModel(
      {required String telescopeId,
      required String telescopeModel,
      required num price,
      required String imageUrl,
      num quantity}) = _$_CartModel;

  factory _CartModel.fromJson(Map<String, dynamic> json) =
      _$_CartModel.fromJson;

  @override
  String get telescopeId;
  set telescopeId(String value);
  @override
  String get telescopeModel;
  set telescopeModel(String value);
  @override
  num get price;
  set price(num value);
  @override
  String get imageUrl;
  set imageUrl(String value);
  @override
  num get quantity;
  set quantity(num value);
  @override
  @JsonKey(ignore: true)
  _$$_CartModelCopyWith<_$_CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}
