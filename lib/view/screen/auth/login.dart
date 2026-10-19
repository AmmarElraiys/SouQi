import 'package:ecommerce_app/controller/login_controller.dart';
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
                          const CustomTextBodyWidget(text: 'أهلاً بك في سوقي'),
                          const SizedBox(height: 10),
                          const CustomTextWidget(
                            title: 'سجّل دخولك واكتشف تجربة تسوّق مميزة',
                          ),
                          const SizedBox(height: 36),
                          const CustomTextEmailPasswordWidget(
                            title: 'البريد الإلكتروني',
                          ),
                          const SizedBox(height: 10),
                          CustomTextFormFieldWidget(
                            hinttext: 'example@email.com',
                            icon: Icons.email_outlined,
                            controller: controller.emailController,
                          ),
                          const SizedBox(height: 22),
                          const CustomTextEmailPasswordWidget(
                            title: 'كلمة المرور',
                          ),
                          const SizedBox(height: 10),
                          CustomTextFormFieldWidget(
                            hinttext: 'أدخل كلمة المرور',
                            icon: Icons.lock_outline_rounded,
                            controller: controller.passwordController,
                          ),
                          const SizedBox(height: 12),
                          Align(
                            alignment: Alignment.centerLeft,

                            child: CustomTextButtonWidget(
                              title: 'نسيت كلمة المرور؟',
                              onPressed: () {},
                            ),
                          ),
                          const SizedBox(height: 18),
                          SizedBox(
                            height: 56,
                            child: CustomButtonWidget(
                              title: 'تسجيل الدخول',
                              onPressed: controller.login,
                            ),
                          ),
                          const SizedBox(height: 24),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'ليس لديك حساب؟ ',
                                style: TextStyle(color: Colors.black54),
                              ),
                              CustomTextButtonWidget(
                                title: 'أنشئ حساباً',
                                onPressed: () {},
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
