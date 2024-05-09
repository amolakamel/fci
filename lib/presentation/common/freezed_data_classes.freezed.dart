// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_data_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginObjects {
  String get userName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginObjectsCopyWith<LoginObjects> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginObjectsCopyWith<$Res> {
  factory $LoginObjectsCopyWith(
          LoginObjects value, $Res Function(LoginObjects) then) =
      _$LoginObjectsCopyWithImpl<$Res, LoginObjects>;
  @useResult
  $Res call({String userName, String password});
}

/// @nodoc
class _$LoginObjectsCopyWithImpl<$Res, $Val extends LoginObjects>
    implements $LoginObjectsCopyWith<$Res> {
  _$LoginObjectsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginObjectsImplCopyWith<$Res>
    implements $LoginObjectsCopyWith<$Res> {
  factory _$$LoginObjectsImplCopyWith(
          _$LoginObjectsImpl value, $Res Function(_$LoginObjectsImpl) then) =
      __$$LoginObjectsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName, String password});
}

/// @nodoc
class __$$LoginObjectsImplCopyWithImpl<$Res>
    extends _$LoginObjectsCopyWithImpl<$Res, _$LoginObjectsImpl>
    implements _$$LoginObjectsImplCopyWith<$Res> {
  __$$LoginObjectsImplCopyWithImpl(
      _$LoginObjectsImpl _value, $Res Function(_$LoginObjectsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? password = null,
  }) {
    return _then(_$LoginObjectsImpl(
      null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginObjectsImpl implements _LoginObjects {
  _$LoginObjectsImpl(this.userName, this.password);

  @override
  final String userName;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginObjects(userName: $userName, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginObjectsImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginObjectsImplCopyWith<_$LoginObjectsImpl> get copyWith =>
      __$$LoginObjectsImplCopyWithImpl<_$LoginObjectsImpl>(this, _$identity);
}

abstract class _LoginObjects implements LoginObjects {
  factory _LoginObjects(final String userName, final String password) =
      _$LoginObjectsImpl;

  @override
  String get userName;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginObjectsImplCopyWith<_$LoginObjectsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
