import 'package:fci/domain/usecase/login_usecase.dart';
import 'package:fci/presentation/common/freezed_data_classes.dart';
import 'package:fci/presentation/login/cupit/login_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginCubit extends Cubit<LoginStates> {
  final   formKey = GlobalKey<FormState>();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginCubit(this._loginUseCase) : super(AppInitialState());


  var loginObject = LoginObjects("", "");
  final LoginUseCase _loginUseCase;

  setUserName(String userName) {
    loginObject = loginObject.copyWith(
        userName: userNameController.text.trim());
  }

  setPassword(String password) {
    loginObject = loginObject.copyWith(
        password: passwordController.text.trim());
  }

  login() async {


    (await _loginUseCase.execute(
        LoginUseCaseInput(loginObject.userName, loginObject.password)))
        .fold(
            (failure) => {print(failure.code)}, // Corrected typo here
            (data) => {
              print(data.id)
            });
  }
}
