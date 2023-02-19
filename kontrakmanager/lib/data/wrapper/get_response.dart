import 'package:dio/dio.dart';

import 'api_response.dart';

Future<ApiResponse<T>> getResponse<T>(
  Future<Response<dynamic>> Function() request,
  T Function(dynamic result) jsonToObject,
) async {
  try {
    var result = await request();

    switch (result.statusCode) {
      case 200:
        return ApiResponse(
            data: jsonToObject(result.data)
        );
      case 300:
        return ApiResponse(
            data: jsonToObject(result.data),
            exception: Exception('Gagal melakukan redirect'));
      case 400:
        return ApiResponse(
            data: jsonToObject(result.data),
            exception: Exception('Gagal menghubungkan ke server'));
      case 500:
        return ApiResponse(
            data: jsonToObject(result.data),
            exception: Exception('Terjadi kesalahan pada server'));
      default:
        return ApiResponse(
            data: jsonToObject(result.data),
            exception: Exception('Terjadi kesalahan, coba lagi nanti'));
    }
  } catch (e) {
    return ApiResponse(exception: Exception(e.toString()));
  }
}
