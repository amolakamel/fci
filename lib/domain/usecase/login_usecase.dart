import 'package:dartz/dartz.dart';
import 'package:fci/data/network/failure.dart';
import 'package:fci/data/network/request.dart';
import 'package:fci/domain/model/models.dart';
import 'package:fci/domain/repository/repository.dart';
import 'package:fci/domain/usecase/base_usecase.dart';

class LoginUseCase implements BaseUseCase<LoginUseCaseInput, Login> {
  final Repository _repository;

  LoginUseCase(this._repository);

  @override
  Future<Either<Failure, Login>> execute(LoginUseCaseInput input) async {
    return await _repository
        .login(LoginRequest(input.email, input.password));
  }
}

class LoginUseCaseInput {
  String email;
  String password;
  LoginUseCaseInput(this.email, this.password);
}
