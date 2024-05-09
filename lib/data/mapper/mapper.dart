
import 'package:fci/app/constants.dart';
import 'package:fci/app/extensions.dart';
import 'package:fci/data/response/responses.dart';
import 'package:fci/domain/model/models.dart';


extension LoginMapper on LoginResponse? {
  Login toDomain() {
    return Login(
      this?.email.orEmpty() ?? Constants.empty,
      this?.password.orEmpty() ??Constants.empty,
      this?.id.orZero() ?? Constants.zero,
    );
  }
}
