import 'package:ecommerce_app/controller/auth/verifycodesignup_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/auth/forgetpassword/custom_button_widget.dart';
import 'package:ecommerce_app/view/widget/auth/forgetpassword/custom_logo_forgetpass_widget.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_body_widget.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_button_widget.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_form_field_verifycode_widget.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_widget.dart';
import 'package:ecommerce_app/view/widget/snackbar_app_verifycode_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifycodeSignUp extends StatelessWidget {
  const VerifycodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeSignUpControllerImp controller = VerifyCodeSignUpControllerImp();
    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 430),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomLogoForgetpassWidget(
                      icon: Icons.mark_email_read_outlined,
                    ),
                    const SizedBox(height: 28),
                    CustomTextBodyWidget(text: '46'.tr),
                    const SizedBox(height: 12),
                    CustomTextWidget(title: '61'.tr),
                    const SizedBox(height: 32),
                    const CustomTextFormFieldVerifycodeWidget(),
                    const SizedBox(height: 24),
                    SizedBox(
                      height: 54,
                      child: CustomButtonWidget(
                        title: '44'.tr,
                        onPressed: () {
                          SnackbarAppVerifycodeWidget.showWelcome();
                          controller.goToSuccessSignup();
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(child: CustomTextButtonWidget(title: '45'.tr)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
