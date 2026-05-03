import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:kids_trakr/feature/login/login_controller.dart';
import 'package:kids_trakr/utils/logic/validator.dart';
import 'package:kids_trakr/utils/theme/app_color.dart';
import 'package:kids_trakr/utils/widgets/custom_text_field.dart';
import 'package:kids_trakr/utils/widgets/primary_button.dart';

class FormLogin extends GetView<LoginController> {
  const FormLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: controller.loginFromKey,
      child: Column(
        children: [
          const CustomTextField(
            name: 'email',
            label: 'Email',
            required: true,
            hint: 'Enter your email',
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            validator: FormValidator.email,
          ),
          const SizedBox(height: 16.0),
          Obx(
            () => CustomTextField(
              name: 'Password',
              label: 'Password',
              required: true,
              hint: 'Enter your password',
              obscureText: !controller.isPasswordVisible.value,
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: IconButton(
                icon: Icon(
                  controller.isPasswordVisible.value
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: AppColors.text60,
                ),
                onPressed: () => controller.isPasswordVisible.toggle(),
                splashColor: AppColors.transparent,
                highlightColor: AppColors.transparent,
              ),
              validator: FormValidator.password,
            ),
          ),
          const SizedBox(height: 24.0),
          PrimaryButton(
            text: 'Login',
            onPressed: () {
              controller.login();
              // Get.offAllNamed(Routes.bottomNavigation);
            },
          ),
        ],
      ),
    );
  }
}
