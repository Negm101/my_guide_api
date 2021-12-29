library my_guide_api;

import 'package:my_guide_api/src/helpers.dart';
import 'package:dio/dio.dart';
import 'package:my_guide_api/src/utils.dart';
import 'package:my_guide_api/src/models.dart';

part 'endpoints/states.dart';

class MYGuideApi {
  late String baseUrl;
  final Dio _dio;

  MYGuideApi(
    this.baseUrl, {
    Dio? dio,
  }) : _dio = dio ??= Dio();

  Future<MYGRespnose> fetch(
    String endpoint, {
    Map<String, dynamic>? args,
  }) async {
    final uri = baseUrl;
    _dio.options.baseUrl = uri;

    try {
      int? total, totalPages;
      final res = await _dio.get(
        '/$endpoint',
        queryParameters: args,
      );

      return MYGRespnose(
        data: res.data,
        statusCode: res.statusCode!,
      );
    } on DioError catch (e) {
      MYGUtils.logger.e(e.message);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  /// Standard Endpoins

  _States get states => _States(this);
}
