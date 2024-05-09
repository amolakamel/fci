import 'package:freezed_annotation/freezed_annotation.dart';
part 'freezed_data_classes.freezed.dart';

@freezed
class LoginObjects with _$LoginObjects {
  factory LoginObjects(String userName, String password) = _LoginObjects;
}

