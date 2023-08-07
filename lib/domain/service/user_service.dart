import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:tdd_architechture/presentation/core/api.dart';
import 'package:tdd_architechture/domain/model/userModel.dart';

class UserService {
  Future<Either<String, List<UserModel>>> getUser() async {
    try {
      Response response = await Dio().get(Api.api);
      if (response.statusCode == 200) {
        return right((response.data as List)
            .map((e) => UserModel.fromJson(jsonEncode(e)))
            .toList());
      } else {
        return left(response.statusMessage.toString());
      }
    } on DioException catch (e) {
      return left(e.message.toString());
    }
  }
}
