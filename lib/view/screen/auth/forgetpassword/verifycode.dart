import 'package:ecommerce_app/controller/forgetpassword/verifycode_controller.dart';
import 'package:ecommerce_app/core/class/handlingdataview.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/auth/forgetpassword/custom_button_widget.dart';
import 'package:ecommerce_app/view/widget/auth/forgetpassword/custom_logo_forgetpass_widget.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_body_widget.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_button_widget.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_form_field_verifycode_widget.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Verifycode extends StatelessWidget {
  const Verifycode({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyCodeControllerImp());
    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: GetBuilder<VerifyCodeControllerImp>(
        builder: (controller) => Handlingdatarequest(
          statusRequest: controller.statusRequest,
          widget: SafeArea(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 20,
                  ),
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
                        CustomTextWidget(title: '43'.tr),
                        const SizedBox(height: 32),
                        CustomTextFormFieldVerifycodeWidget(
                          controller: controller.verifycodeforgetpass,
                        ),
                        const SizedBox(height: 24),
                        SizedBox(
                          height: 54,
                          child: CustomButtonWidget(
                            title: '44'.tr,
                            onPressed: () {
                              controller.checkCode();
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
        ),
      ),
    );
  }
}
