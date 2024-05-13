import 'package:fci/presentation/resources/app_router.dart';
import 'package:fci/presentation/resources/color_manager.dart';
import 'package:fci/presentation/resources/strings_manager.dart';
import 'package:fci/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF333333),
      body: Column(
        children: [
          const SizedBox(
            width: 360,
            height: 180,
            child: Padding(
              padding: EdgeInsets.only(top: 80),
              child: Center(
                child: Text(
                  AppStrings.settings,
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
            ),
          ),
          const Divider(
            thickness: 5,
            color: Color(0XFF2B2B2B),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 1 / 3,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      AppStrings.developers,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: ColorManager.white,
                            fontSize: AppSize.s25,
                          ),
                    ),
                    const SizedBox(
                      width: AppSize.s12,
                    ),
                    IconButton(
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.kAboutView);
                      },
                      icon: const Icon(
                        Icons.people,
                        color: Color(0XFF17A6FF),
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Divider(
            thickness: 0.5,
            color: Colors.white,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 1 / 3,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      AppStrings.exit,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: ColorManager.white,
                            fontSize: AppSize.s25,
                          ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.exit_to_app, size: 40),
                      color: const Color(0XFF17A6FF),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0), // No rounded corners
                              ),
                              backgroundColor: const Color(0xFF333333),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
            
                                    padding: const EdgeInsets.all(16.8),
                                    child: Text(
                                      
                                      AppStrings.exit,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                            color: ColorManager.white,
                                            fontSize: AppSize.s25,
                                          ),
                                    ),
                                  ),
                                    const Divider(
                                  thickness: 0.5,
                                  color: Colors.white,
                                  ),
                                    const SizedBox(
                                      height: AppSize.s30,
                                  ),
                                
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 0.0),
                                    child: Text(
                                      AppStrings.sure,
                                      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                                            color: ColorManager.white,
                                            fontSize: AppSize.s20,
                                          ),
                                    ),
                                  
                                  ),
                                    const SizedBox(
                                      height: AppSize.s16,
                                  ),
                                
                                  ButtonBar(
                                    children: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          AppStrings.cancel,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium
                                              ?.copyWith(
                                                color: ColorManager.lightBlue,
                                                fontSize: AppSize.s20,
                                              ),
                                        ),
                                        
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          SystemNavigator.pop();
                                        },
                                        child: Text(
                                          AppStrings.ok,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium
                                              ?.copyWith(
                                                color: ColorManager.lightBlue,
                                                fontSize: AppSize.s20,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
