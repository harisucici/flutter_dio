import 'package:dio/dio.dart';
import 'package:flutter_dio/http/api_response.dart';
import 'package:flutter_dio/http/http_utils.dart';
import 'package:flutter_dio/models/category_entity.dart';
import 'package:json_annotation/json_annotation.dart';

import 'http/base_entity.dart';

class GanRepository {
  static final String categories = "v1/app/task/taskList";

  static Future<ApiResponse<BaseEntity>> getCategories() async {
    try {
      final response = await HttpUtils.post(categories);
      var data = BaseEntity.fromJson(response);
      return ApiResponse.completed(data);
    } on DioError catch (e) {
      return ApiResponse.error(e.error);
    }
  }
}
