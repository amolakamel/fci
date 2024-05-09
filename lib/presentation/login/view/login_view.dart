import 'package:fci/app/di.dart';
import 'package:fci/app/extensions.dart';
import 'package:fci/presentation/login/cupit/login%20cupit.dart';
import 'package:fci/presentation/login/cupit/login_states.dart';
import 'package:fci/presentation/resources/app_router.dart';
import 'package:fci/presentation/resources/assets_manager.dart';
import 'package:fci/presentation/resources/color_manager.dart';
import 'package:fci/presentation/resources/constants_manager.dart';
import 'package:fci/presentation/resources/strings_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fci/presentation/resources/values_manager.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => LoginCubit(instance()),
        child: BlocBuilder<LoginCubit, LoginStates>(
          builder: (context, state) {
            final loginCubit = BlocProvider.of<LoginCubit>(context);
            return SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height, // Provide a specific height
                padding: const EdgeInsets.only(top: AppPadding.p8),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      ColorManager.primaryGradient.withOpacity(0.9),
                      ColorManager.secondaryGradient.withOpacity(0.7),
                    ],
                    stops: [0.2, 0.7],
                  ),
                ),
                child: Form(
                  key: loginCubit.formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: AppSize.s30,
                            ),
                            SizedBox(
                              height: context.height * 1 / 6,
                              child: Image.asset(ImageAssets.loginLogo),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: AppPadding.p28,
                                right: AppPadding.p28,
                              ),
                              child: Text(
                                "Higher Education In Egypt",
                                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                      color: ColorManager.white,
                                      fontSize: 24,
                                    ),
                              ),
                            ),
                            const SizedBox(
                              height: AppSize.s18,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: AppPadding.p28,
                                right: AppPadding.p28,
                              ),
                              child: Text(
                                "Suez Canal University",
                                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                      color: ColorManager.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                            ),
                            const SizedBox(
                              height: AppSize.s18,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: AppPadding.p28,
                                right: AppPadding.p28,
                              ),
                              child: SizedBox(
                                child: Text(
                                  'Egyptian government university',
                                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                        color: ColorManager.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                      ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: AppSize.s40,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: context.height / 2,
                          decoration: const BoxDecoration(
                            color: ColorManager.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(AppSize.s30),
                              topRight: Radius.circular(AppSize.s30),
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: context.height * 1 / 6,
                                child: Image.asset(ImageAssets.onboardingLogo1, fit: BoxFit.cover),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: AppPadding.p28,
                                  right: AppPadding.p28,
                                ),
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  controller: loginCubit.userNameController,
                                  onChanged: (value) {
                                    loginCubit.setUserName(value);
                                  },
                                  decoration: const InputDecoration(
                                    hintText: AppStrings.email,
                                    labelText: AppStrings.email,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: AppSize.s18,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: AppPadding.p28,
                                  right: AppPadding.p28,
                                ),
                                child: TextFormField(
                                  keyboardType: TextInputType.visiblePassword,
                                  controller: loginCubit.passwordController,
                                  onChanged: (value) {
                                    loginCubit.setPassword(value);
                                  },
                                  decoration: const InputDecoration(
                                    hintText: AppStrings.password,
                                    labelText: AppStrings.password,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: AppSize.s18,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: AppPadding.p28,
                                  right: AppPadding.p28,
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: AppSize.s40,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      loginCubit.login();
                                      GoRouter.of(context).push(AppRouter.kMainView);
                                    },
                                    child: Text(
                                      'Login',
                                      style: Theme.of(context).textTheme.titleMedium,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: AppSize.s18,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
