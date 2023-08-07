import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_architechture/domain/model/userModel.dart';

void main() {
  group("userModel testing", () {
    test("userModel created succesfully", () {
      UserModel userModel1 = UserModel.fromJson(
        jsonEncode(
          {
            "id": 1,
            "name": "Leanne Graham",
            "username": "Bret",
            "email": "Sincere@april.biz",
            "address": {
              "street": "Kulas Light",
              "suite": "Apt. 556",
              "city": "Gwenborough",
              "zipcode": "92998-3874",
              "geo": {"lat": "-37.3159", "lng": "81.1496"}
            },
            "phone": "1-770-736-8031 x56442",
            "website": "hildegard.org",
            "company": {
              "name": "Romaguera-Crona",
              "catchPhrase": "Multi-layered client-server neural-net",
              "bs": "harness real-time e-markets"
            }
          },
        ),
      );
      expect(userModel1.runtimeType, UserModel);
    });
  });
}
