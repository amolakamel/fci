
import 'package:fci/app/di.dart';
import 'package:fci/presentation/about_view/about_view.dart';
import 'package:fci/presentation/college_specialization/view/college_specialization_view.dart';
import 'package:fci/presentation/login/view/login_view.dart';
import 'package:fci/presentation/main/view/main_view.dart';
import 'package:fci/presentation/material/view/material_view.dart';
import 'package:fci/presentation/onboarding/view/onboarding_view.dart';
import 'package:fci/presentation/settings/settings_view.dart';
import 'package:fci/presentation/splash/view/splash_view.dart';
import 'package:fci/presentation/terms/term.dart';
import 'package:fci/presentation/years/view/years_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kLoginView = '/loginView';
  static const kRegisterView = '/registerView';
  static const kOnBoardingView = '/onBoardingView';
  static const kForgotPasswordView = '/forgotPasswordView';
  static const kMainView = '/mainView';
  static const kYearsView = '/yearsView';
  static const kCollegeSpecializationView = '/collegeSpecializationView';
  static const kMaterialView = '/materialView';
  static const kTermsView = '/termsView';
  static const kSettingsView = '/settingsView';
  static const kAboutView = '/aboutView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
          builder: (context, state) =>  SplashView(),
      ),
      GoRoute(
        path: kCollegeSpecializationView,
        builder: (context, state) => const CollegeSpecializationView (),
      ),

      GoRoute(
        path: kLoginView,
        builder: (context, state) {
          initLoginModule();
          return const LoginView();
        },
      ),
      GoRoute(
        path: kOnBoardingView,
        builder: (context, state) => const OnBoardingView(),
      ),GoRoute(
        path: kYearsView,
        builder: (context, state) {
          // final args = state.extra as List<dynamic>;
          // String title = args[0];
          return YearsView(text:(state.extra as String? )?? '',);
        },
      ),
      GoRoute(
        path: kMainView,
        builder: (context, state) => const MainView(),
      ),


      GoRoute(
        path: kTermsView,
        builder: (context, state) => const TermsView(),
      ),
      GoRoute(
        path: kMaterialView,
        builder: (context, state) {
          return MaterialView(text:(state.extra as String? )?? '',);

        },
      ),
      GoRoute(
        path: kSettingsView,
        builder: (context, state) =>  const SettingsView(),
      ),GoRoute(
        path: kAboutView,
        builder: (context, state) =>   DeveloperPage(),
      ),
    ],
  );
}
