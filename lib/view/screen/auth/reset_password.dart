import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/auth/custom_button_widget.dart';
import 'package:ecommerce_app/view/widget/auth/custom_logo_forgetpass_widget.dart';
import 'package:ecommerce_app/view/widget/auth/custom_singup_text_form_field_widget.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_body_widget.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_widget.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
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
                      CustomTextBodyWidget(text: 'إنشاء كلمة مرور جديدة'),
                      const SizedBox(height: 12),
                      CustomTextWidget(
                        title:
                            'اختر كلمة مرور قوية لحماية حسابك، ثم أكدها للمتابعة.',
                      ),

                      const SizedBox(height: 32),
                      CustomSignupTextFormFieldWidget(
                        label: 'كلمة المرور الجديدة',
                        hint: 'أنشئ كلمة مرور قوية',
                        icon: Icons.lock_outline_rounded,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        controller: null,
                      ),
                      const SizedBox(height: 20),
                      CustomSignupTextFormFieldWidget(
                        label: 'تأكيد كلمة المرور',
                        hint: 'أعد إدخال كلمة المرور',
                        icon: Icons.lock_outline_rounded,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        controller: null,
                      ),
                      const SizedBox(height: 28),
                      SizedBox(
                        height: 54,
                        child: CustomButtonWidget(
                          title: 'حفظ كلمة المرور',
                          onPressed: () {},
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
