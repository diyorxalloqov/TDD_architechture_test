import 'package:dartz/dartz.dart';
import 'package:tdd_architechture/domain/service/user_service.dart';

import '../model/userModel.dart';

class UserRepository {
  final UserService _userService = UserService();
  Future<Either<String, List<UserModel>>> getUsers() async {
    Either<String, List<UserModel>> res = await _userService.getUser();
    return res.fold((error) => left(error), (data) => right(data));
  }
}
