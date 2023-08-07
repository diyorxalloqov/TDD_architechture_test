import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_architechture/domain/service/user_service.dart';

void main() {
  group("user repository testing", () {
    test("error api url not correct", () async {
     final UserService _userService = UserService();

      var response = await _userService.getUser();
      expect(response.isRight(), true);
    });
  });
}
