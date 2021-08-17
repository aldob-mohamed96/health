import 'package:flutter_application_5/app/modules/auth/bindings/auth_bindings.dart';
import 'package:flutter_application_5/app/modules/auth/views/auth_login_views.dart';
import 'package:flutter_application_5/app/modules/on_boarding/bindings/on_boarding_bindings.dart';
import 'package:flutter_application_5/app/modules/on_boarding/views/on_boarding_view.dart';
import 'package:get/get.dart' ;
part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.ROOT;

  static final routes = [
    GetPage(name: Routes.ROOT, page: () => OnBoardingView(),binding: OnBoardingBindings()),
    GetPage(name: Routes.LOGIN, page: () => AuthLoginView(),binding: AuthBindings()),
     
  ];
}
