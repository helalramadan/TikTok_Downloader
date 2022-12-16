import 'package:dio/dio.dart';
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
}
