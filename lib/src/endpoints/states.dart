part of '../main.dart';

class _States {
  static const String _name = 'states';
  MYGuideApi _api;

  _States(this._api);

  Future<MYGRespnose> fetch({int? id, Map<String, dynamic>? args}) async {
    try {
      if (id != null) {
        final MYGRespnose res = await _api.fetch('$_name/$id', args: args);
        print(res.data);
        return MYGRespnose(
          statusCode: res.statusCode,
          data: MyState.fromJson(res.data),
        );
      }
      final MYGRespnose res = await _api.fetch(_name, args: args);
      return MYGRespnose(
        statusCode: res.statusCode,
        data: MyState.fromJsons(res.data),
      );
    } catch (e) {
      rethrow;
    }
  }
}
