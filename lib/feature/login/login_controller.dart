import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:kids_trakr/data/base/base_controller.dart';
import 'package:kids_trakr/feature/auth/authentication.dart';
import 'package:kids_trakr/model/user.dart';

class LoginController extends BaseController {
  final loginFromKey = GlobalKey<FormBuilderState>();
  final selectedRole = 'Parent'.obs;

  void selectRole(String role) {
    selectedRole.value = role;
  }

  Future<void> login() async {
    if (!(loginFromKey.currentState?.saveAndValidate() ?? false)) return;

    final authService = Get.find<AuthenticationService>();
    await authService.saveAuthData(
      token: 'mock_login_token',
      user: User(
        name: 'Demo User',
        email: loginFromKey.currentState?.value['email']?.toString(),
      ),
    );
  }
}
