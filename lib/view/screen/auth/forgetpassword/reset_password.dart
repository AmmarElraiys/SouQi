import 'package:ecommerce_app/controller/auth/resetpassword_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/auth/forgetpassword/custom_button_widget.dart';
import 'package:ecommerce_app/view/widget/auth/forgetpassword/custom_logo_forgetpass_widget.dart';
import 'package:ecommerce_app/view/widget/auth/custom_singup_text_form_field_widget.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_body_widget.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetpasswordControllerImp controller = Get.put(
      ResetpasswordControllerImp(),
    );
    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 430),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: CustomLogoForgetpassWidget(
                          icon: Icons.lock_reset_rounded,
                        ),
                      ),

                      const SizedBox(height: 28),
                      CustomTextBodyWidget(text: '56'.tr),
                      const SizedBox(height: 12),
                      CustomTextWidget(title: '57'.tr),

                      const SizedBox(height: 32),
                      CustomSignupTextFormFieldWidget(
                        label: '58'.tr,
                        hint: '59'.tr,
                        icon: Icons.lock_outline_rounded,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        controller: null,
                      ),
                      const SizedBox(height: 20),
                      CustomSignupTextFormFieldWidget(
                        label: '26'.tr,
                        hint: '27'.tr,
                        icon: Icons.lock_outline_rounded,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        controller: null,
                      ),
                      const SizedBox(height: 28),
                      SizedBox(
                        height: 54,
                        child: CustomButtonWidget(
                          title: '60'.tr,
                          onPressed: () {
                            controller.goToSuccessResetPassword();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
