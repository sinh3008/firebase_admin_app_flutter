// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserAddress _$UserAddressFromJson(Map<String, dynamic> json) {
  return _UserAddress.fromJson(json);
}

/// @nodoc
mixin _$UserAddress {
  String get streetAddress => throw _privateConstructorUsedError;
  set streetAddress(String value) => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  set city(String value) => throw _privateConstructorUsedError;
  String get postCode => throw _privateConstructorUsedError;
  set postCode(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAddressCopyWith<UserAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAddressCopyWith<$Res> {
  factory $UserAddressCopyWith(
          UserAddress value, $Res Function(UserAddress) then) =
      _$UserAddressCopyWithImpl<$Res, UserAddress>;
  @useResult
  $Res call({String streetAddress, String city, String postCode});
}

/// @nodoc
class _$UserAddressCopyWithImpl<$Res, $Val extends UserAddress>
    implements $UserAddressCopyWith<$Res> {
  _$UserAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streetAddress = null,
    Object? city = null,
    Object? postCode = null,
  }) {
    return _then(_value.copyWith(
      streetAddress: null == streetAddress
          ? _value.streetAddress
          : streetAddress // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      postCode: null == postCode
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserAddressCopyWith<$Res>
    implements $UserAddressCopyWith<$Res> {
  factory _$$_UserAddressCopyWith(
          _$_UserAddress value, $Res Function(_$_UserAddress) then) =
      __$$_UserAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String streetAddress, String city, String postCode});
}

/// @nodoc
class __$$_UserAddressCopyWithImpl<$Res>
    extends _$UserAddressCopyWithImpl<$Res, _$_UserAddress>
    implements _$$_UserAddressCopyWith<$Res> {
  __$$_UserAddressCopyWithImpl(
      _$_UserAddress _value, $Res Function(_$_UserAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streetAddress = null,
    Object? city = null,
    Object? postCode = null,
  }) {
    return _then(_$_UserAddress(
      streetAddress: null == streetAddress
          ? _value.streetAddress
          : streetAddress // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      postCode: null == postCode
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserAddress implements _UserAddress {
  _$_UserAddress(
      {required this.streetAddress,
      required this.city,
      required this.postCode});

  factory _$_UserAddress.fromJson(Map<String, dynamic> json) =>
      _$$_UserAddressFromJson(json);

  @override
  String streetAddress;
  @override
  String city;
  @override
  String postCode;

  @override
  String toString() {
    return 'UserAddress(streetAddress: $streetAddress, city: $city, postCode: $postCode)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserAddressCopyWith<_$_UserAddress> get copyWith =>
      __$$_UserAddressCopyWithImpl<_$_UserAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserAddressToJson(
      this,
    );
  }
}

abstract class _UserAddress implements UserAddress {
  factory _UserAddress(
      {required String streetAddress,
      required String city,
      required String postCode}) = _$_UserAddress;

  factory _UserAddress.fromJson(Map<String, dynamic> json) =
      _$_UserAddress.fromJson;

  @override
  String get streetAddress;
  set streetAddress(String value);
  @override
  String get city;
  set city(String value);
  @override
  String get postCode;
  set postCode(String value);
  @override
  @JsonKey(ignore: true)
  _$$_UserAddressCopyWith<_$_UserAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
