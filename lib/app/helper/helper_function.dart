import 'dart:convert' as convert;
import 'dart:io' as io;

import 'package:flutter/services.dart';

class HelperFunction {
  static Future<dynamic> getJsonFile(String path) async {
    return rootBundle.loadString(path).then(convert.jsonDecode);
  }

  static Future<dynamic> getFilesInDirectory(String path) async {
    var files = io.Directory(path).listSync();
    print(files);
   
  }
}
