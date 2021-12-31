part of '../main.dart';


class _Services {
  static const String _name = 'services';
  MYGuideApi _api;

  _Services(this._api);

  Future<MYGRespnose> fetch({int? id, Map<String, dynamic>? args}) async {
    try {
      if (id != null) {
        final MYGRespnose res = await _api.fetch('$_name/$id', args: args);
        print(res.data);
        return MYGRespnose(
          statusCode: res.statusCode,
          //data: MyState.fromJson(res.data),
        );
      }
      final MYGRespnose res = await _api.fetch(_name, args: args);
      return MYGRespnose(
        statusCode: res.statusCode,
        data: Service.fromJson(res.data),
      );
    } catch (e) {
      rethrow;
    }
  }
}
