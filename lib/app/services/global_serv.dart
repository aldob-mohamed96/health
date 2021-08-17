import 'package:flutter_application_5/app/helper/helper_function.dart';
import 'package:flutter_application_5/app/models/global_model.dart';
import 'package:get/get.dart';
class GlobalServ extends GetxService{

 
 final globalmodel=GlobalModel().obs;
 
  Future<GlobalServ> init() async {
    var response = await HelperFunction.getJsonFile('asset/config/global.json');//file contain url
    globalmodel.value = GlobalModel.fromJson(response);
    return this;
}
  
 String? get baseUrls => globalmodel.value.baseUrl;

}