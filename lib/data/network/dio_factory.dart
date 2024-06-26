
import 'package:dio/dio.dart';
import 'package:fci/app/app_prefs.dart';
import 'package:fci/app/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String APPLICATION_JSON = "application/json";
const String CONTENT_TYPE = "content-type";
const String ACCEPT = "accept";
const String AUTHORIZATION = "authorization";
const String DEFAULT_LANGUAGE = "language";

class DioFactory {
  final AppPreference _appPreference;
  DioFactory(this._appPreference);

  Future<Dio> getDio() async {
    Dio dio = Dio();
    String language =await _appPreference.getAppLang();
    Duration timeout = const Duration(seconds: Constants.apiTimeOut);
    Map<String, String> headers = {
      CONTENT_TYPE: APPLICATION_JSON,
      ACCEPT: APPLICATION_JSON,
      AUTHORIZATION:Constants.token,
      DEFAULT_LANGUAGE: language,
    };
    dio.options = BaseOptions(
        baseUrl: Constants.baseUrl,
        headers: headers,
        receiveTimeout: timeout,
        sendTimeout: timeout);

    if(!kReleaseMode)
      {
        dio.interceptors.add(
            PrettyDioLogger(
          requestHeader : true,
          requestBody :true,
          responseHeader : true,
        ));
      }

    return dio;
  }
}
