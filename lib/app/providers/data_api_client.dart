import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:flutter_application_5/app/helper/helper_function.dart';
import 'package:flutter_application_5/app/models/setting_model.dart';
import 'package:flutter_application_5/app/services/global_serv.dart';
import 'package:get/get.dart';
class DataApiClient{

final _globalService = Get.find<GlobalServ>();

  String? get baseUrl => _globalService.globalmodel.value.baseUrl;

  final Dio? httpClient;
  
 // final Options _options = buildCacheOptions(Duration(days: 3), forceRefresh: true);

  DataApiClient({this.httpClient})
  {
     httpClient!.interceptors.add(DioCacheManager(CacheConfig(baseUrl: baseUrl)).interceptor);
  } 

  Future<Setting> getSettings() async {
    
    var response = await HelperFunction.getJsonFile('asset/locales/settings.json');

    if (response!=null) {
      return Setting.fromJson(response);
    } else {
      throw new Exception(response.statusMessage);
    }
  }  

}