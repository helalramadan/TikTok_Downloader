import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tiktok_downloader/strings.dart';

class DioApi {
  static Dio? dio;
  static init() {
    dio = Dio(
      BaseOptions(baseUrl: BASE_URL, receiveDataWhenStatusError: true),
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    dio!.options.headers = {
      'X-RapidAPI-Key': X_RapidAPI_Key,
      'X-RapidAPI-Host': X_RapidAPI_Host,
    };

    return await dio!.get(
      url,
      queryParameters: query,
    );
  }
  static Future<Response> dwonloadVideo({ required String url,})async{
    Directory directory=await getApplicationDocumentsDirectory();
  return await dio!.download(
      url,'${directory.path}'

    );

  }
}
