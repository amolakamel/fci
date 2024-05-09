
import 'package:fci/data/network/app_api.dart';
import 'package:fci/data/network/request.dart';
import 'package:fci/data/response/responses.dart';

abstract class RemoteDataSource {
  Future<LoginResponse> login(LoginRequest loginRequest);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final AppServiceClint _appServiceClient;

  RemoteDataSourceImpl(this._appServiceClient);
  @override
  Future<LoginResponse> login(LoginRequest loginRequest) async {
    return await _appServiceClient.login(
      loginRequest.email,
      loginRequest.password,
    );
  }


}
