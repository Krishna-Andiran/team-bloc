import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mockapi/app/app_url.dart';
import 'package:mockapi/model/user_model.dart';

class UserController {
  final Dio _dio = Dio();
  Future<bool> createUser(String name) async {
    final UserModel userModel = UserModel(name: name);
    try {
      Response res = await _dio.post(AppUrl.createUser,
          options: Options(contentType: Headers.jsonContentType),
          data: userModel.toJson());
      if (res.statusCode == 201) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
