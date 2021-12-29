part of '../helpers.dart';

class MYGRespnose {
  final dynamic data;
  final int statusCode;

  MYGRespnose({this.data, required this.statusCode});

  @override
  String toString() {
    return """
    $MYGRespnose: {
      statusCode: $statusCode.
      data: $data,
    }""";
  }
}
