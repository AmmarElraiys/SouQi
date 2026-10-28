import 'package:ecommerce_app/controller/auth/signup_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/functions/alertexitapp.dart';
import 'package:ecommerce_app/core/functions/validinput.dart';
import 'package:ecommerce_app/view/widget/auth/forgetpassword/custom_button_widget.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_body_widget.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_button_widget.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_widget.dart';
import 'package:ecommerce_app/view/widget/auth/custom_singup_text_form_field_widget.dart';
import 'package:ecommerce_app/view/widget/auth/singup/custom_lolgo_shopping_bag_widget_singup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) return;

        final shouldExit = await alertExitApp();

        if (shouldExit) {
          await SystemNavigator.pop();
        }
      },
      child: Scaffold(
        backgroundColor: AppColor.backgroundcolor,
        body: GetBuilder<SignupControllerImp>(
          builder: (controller) => SafeArea(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 20,
                ),
                child: Form(
                  key: controller.formKey,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 430),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // شريط الرجوع
                        Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            onPressed: () => Get.back(),
                            icon: const Icon(Icons.arrow_forward_rounded),
                            color: AppColor.primary,
                            tooltip: 'رجوع',
                          ),
                        ),
                        const SizedBox(height: 12),
                        // شعار سوقي
                        CustomLolgoShoppingBagWidgetSingup(),
                        const SizedBox(height: 20),
                        CustomTextBodyWidget(text: '21'.tr),
                        const SizedBox(height: 10),
                        CustomTextWidget(title: '22'.tr),
                        const SizedBox(height: 20),
                        CustomSignupTextFormFieldWidget(
                          validator: (val) {
                            return validInput(val!, 7, 50, 'username');
                          },
                          label: '23'.tr,
                          hint: '24'.tr,
                          icon: Icons.person_outline_rounded,
                          keyboardType: TextInputType.name,
                          obscureText: false,
                          controller: controller.name,
                        ),
                        const SizedBox(height: 15),
                        CustomSignupTextFormFieldWidget(
                          validator: (val) {
                            return validInput(val!, 5, 30, 'email');
                          },
                          label: '14'.tr,
                          hint: 'example@email.com',
                          icon: Icons.email_outlined,
                          keyboardType: TextInputType.emailAddress,
                          obscureText: false,
                          controller: controller.email,
                        ),
                        const SizedBox(height: 15),
                        CustomSignupTextFormFieldWidget(
                          validator: (val) {
                            return validInput(val!, 10, 30, 'phone');
                          },
                          label: '34'.tr,
                          hint: '35'.tr,
                          icon: Icons.phone_outlined,
                          keyboardType: TextInputType.phone,
                          obscureText: false,
                          controller: controller.phone,
                        ),
                        const SizedBox(height: 15),
                        CustomSignupTextFormFieldWidget(
                          validator: (val) {
                            return validInput(val!, 8, 100, 'password');
                          },
                          label: '15'.tr,
                          hint: '25'.tr,
                          icon: Icons.lock_outline_rounded,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          controller: controller.password,
                        ),
                        const SizedBox(height: 15),
                        CustomSignupTextFormFieldWidget(
                          validator: (val) {
                            return validInput(val!, 8, 100, 'password');
                          },
                          label: '26'.tr,
                          hint: '27'.tr,
                          icon: Icons.lock_reset_rounded,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          controller: controller.passwordconf,
                        ),
                        const SizedBox(height: 28),
                        SizedBox(
                          height: 56,
                          child: CustomButtonWidget(
                            title: '28'.tr,
                            onPressed: () {
                              controller.singup();
                            },
                          ),
                        ),
                        const SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '29'.tr,
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 14,
                              ),
                            ),
                            CustomTextButtonWidget(
                              title: '18'.tr,
                              onPressed: () {
                                controller.goToSignIn();
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                      ],
                    ),
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
