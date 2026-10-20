import 'package:ecommerce_app/controller/login_controller.dart';
import 'package:ecommerce_app/core/constant/approutes.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/auth/custom_button_widget.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_body_widget.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_button_widget.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_email_password_widget.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_form_field_widget.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_widget.dart';
import 'package:ecommerce_app/view/widget/auth/login/custom_logo_shopping_bag_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColor.backgroundcolor,
          body: SafeArea(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 28,
                  ),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 430),
                    child: Form(
                      key: controller.formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Center(child: CustomLogoShoppingBagWidget()),
                          const SizedBox(height: 22),
                          CustomTextBodyWidget(text: '12'.tr),
                          const SizedBox(height: 10),
                          CustomTextWidget(title: '13'.tr),
                          const SizedBox(height: 36),
                          CustomTextEmailPasswordWidget(title: '14'.tr),
                          const SizedBox(height: 10),
                          CustomTextFormFieldWidget(
                            hinttext: 'example@email.com',
                            icon: Icons.email_outlined,
                            controller: controller.emailController,
                          ),
                          const SizedBox(height: 22),
                          CustomTextEmailPasswordWidget(title: '15'.tr),
                          const SizedBox(height: 10),
                          CustomTextFormFieldWidget(
                            hinttext: '16'.tr,
                            icon: Icons.lock_outline_rounded,
                            controller: controller.passwordController,
                          ),
                          const SizedBox(height: 12),
                          Align(
                            alignment: Alignment.centerLeft,

                            child: CustomTextButtonWidget(
                              title: '17'.tr,
                              onPressed: () {},
                            ),
                          ),
                          const SizedBox(height: 18),
                          SizedBox(
                            height: 56,
                            child: CustomButtonWidget(
                              title: '18'.tr,
                              onPressed: controller.login,
                            ),
                          ),
                          const SizedBox(height: 24),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '19'.tr,
                                style: TextStyle(color: Colors.black54),
                              ),
                              CustomTextButtonWidget(
                                title: '20'.tr,
                                onPressed: () {
                                  Get.toNamed(AppRoutes.signup);
                                },
                              ),
                            ],
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
      },
    );
  }
}
