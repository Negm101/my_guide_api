part of '../main.dart';

class _Cities {
  static const String _name = 'citiies';
  MYGuideApi _api;

  _Cities(this._api);

  Future<MYGRespnose> fetch({int? id, Map<String, dynamic>? args}) async {
    try {
      if (id != null) {
        final MYGRespnose res = await _api.fetch('$_name/$id', args: args);
        print(res.data);
        return MYGRespnose(
          statusCode: res.statusCode,
          //data: City.fromJson(res.data),
        );
      }
      final MYGRespnose res = await _api.fetch(_name, args: args);
      return MYGRespnose(
        statusCode: res.statusCode,
        data: City.fromJson(res.data),
      );
    } catch (e) {
      rethrow;
    }
  }
}
