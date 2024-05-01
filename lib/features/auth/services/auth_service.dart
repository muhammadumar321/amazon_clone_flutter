import 'package:flutter/material.dart';
import 'package:amazon_clone/constant/gloable_variables.dart';
import 'package:amazon_clone/models/user.dart';
import 'package:http/http.dart' as http;
import '../../../constant/error_handling.dart';
import '../../../constant/utils.dart';

class AuthService {
  void signUpUser({
    required BuildContext context,
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      User user = User(
          id: 'id',
          name: 'name',
          password: 'password',
          address: 'address',
          type: 'type',
          token: 'token',
          email: 'email');

    http.Response res = await http.post(
        Uri.parse('$uri/api/signup'),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          showSnackBar(
            context,
            'Account created! Login with the same credentials!',
          );
        },
      );

    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
