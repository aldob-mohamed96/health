import 'package:flutter_application_5/app/modules/connectivity/controller_connectivity/controller_connectivity.dart';
import 'package:get/get.dart';
class ConnectivityBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ConnetivityController>(() => ConnetivityController());
  }

}