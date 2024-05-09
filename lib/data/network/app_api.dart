import 'package:dio/dio.dart';
import 'package:fci/app/constants.dart';
import 'package:fci/data/response/responses.dart';
import 'package:retrofit/http.dart';
part 'app_api.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class AppServiceClint {
  factory AppServiceClint(Dio dio, {String? baseUrl}) = _AppServiceClint;
  @POST("/users/login")
  Future<LoginResponse> login(
    @Field("email") String email,
    @Field("password") String password,
  );
}
