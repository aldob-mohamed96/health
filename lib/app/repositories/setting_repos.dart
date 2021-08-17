import 'package:dio/dio.dart';
import 'package:flutter_application_5/app/models/setting_model.dart';
import 'package:flutter_application_5/app/providers/data_api_client.dart';

class SettingRepos{
  DataApiClient? _dataApiClient;
  SettingRepos()
  {
    this._dataApiClient=DataApiClient(httpClient: Dio());
  }

  Future<Setting> get() {
    return _dataApiClient!.getSettings();
  }


}