import 'package:ecommerce_app/controller/auth/check_email_Controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/functions/validinput.dart';
import 'package:ecommerce_app/view/widget/auth/forgetpassword/custom_button_widget.dart';
import 'package:ecommerce_app/view/widget/auth/forgetpassword/custom_logo_forgetpass_widget.dart';
import 'package:ecommerce_app/view/widget/auth/custom_singup_text_form_field_widget.dart';
import 'package:ecommerce_app/view/widget/auth/forgetpassword/custom_text_forgerpass_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    CheckEmailConrtollerImp controler = Get.put(CheckEmailConrtollerImp());
    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 430),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 100),
                    const CustomLogoForgetpassWidget(
                      icon: Icons.mark_email_read_outlined,
                    ),
                    const SizedBox(height: 30),
                    CustomTextForgerpassWidget(title: '47'.tr),
                    const SizedBox(height: 14),
                    Text(
                      '48'.tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        height: 1.8,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 30),
                    CustomSignupTextFormFieldWidget(
                      validator: (val) {
                        return validInput(val!, 7, 30, 'email');
                      },
                      label: '14'.tr,
                      hint: 'example@email.com',
                      icon: Icons.email_outlined,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      controller: controler.email, // تم ربطه بالكونترولر
                    ),
                    const SizedBox(height: 28),
                    SizedBox(
                      height: 56,
                      child: CustomButtonWidget(
                        title: '49'.tr,
                        onPressed: () {
                          controler.goToVerifyCodeSignUp();
                        },
                      ),
                    ),
                    // const SizedBox(height: 20),
                    // CustomTextButtonWidget(
                    //   title: 'العودة لتسجيل الدخول',
                    //   onPressed: () {
                    //     Get.back();
                    //   },
                    // ),
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
