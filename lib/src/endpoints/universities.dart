part of '../main.dart';

class _University {
  static const String _name = 'universities';
  MYGuideApi _api;

  _University(this._api);

  Future<MYGRespnose> fetch({int? id, Map<String, dynamic>? args}) async {
    try {
      if (id != null) {
        final MYGRespnose res = await _api.fetch('$_name/$id', args: args);
        return MYGRespnose(
          statusCode: res.statusCode,
          //data: University.fromJson(res.data),
        );
      }
      final MYGRespnose res = await _api.fetch(_name, args: args);
      return MYGRespnose(
        statusCode: res.statusCode,
        data: University.fromJson(res.data),
      );
    } catch (e) {
      rethrow;
    }
  }
}
