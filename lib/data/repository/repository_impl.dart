import 'package:dartz/dartz.dart';
import 'package:fci/data/data_source/remote_data_source.dart';
import 'package:fci/data/mapper/mapper.dart';
import 'package:fci/data/network/error_handler.dart';
import 'package:fci/data/network/failure.dart';
import 'package:fci/data/network/network_info.dart';
import 'package:fci/data/network/request.dart';
import 'package:fci/domain/model/models.dart';
import 'package:fci/domain/repository/repository.dart';

class RepositoryImpl implements Repository {
  final RemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;

  RepositoryImpl(this._remoteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, Login>> login(LoginRequest loginRequest) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _remoteDataSource.login(loginRequest);

          return Right(response.toDomain());

      } catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }
}
