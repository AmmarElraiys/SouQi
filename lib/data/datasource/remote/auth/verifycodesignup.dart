import 'package:ecommerce_app/core/class/crud.dart';
import 'package:ecommerce_app/linkapi.dart';

class VerifyCodeSignUpData {
  Crud crud;
  VerifyCodeSignUpData(this.crud);

  // تحديد نوع الإرجاع صراحة لتجنب تحذيرات المحلل البرمجي
  Future<dynamic> postData(String email, String verifycode) async {
    var response = await crud.postData(AppLink.verifyCodeSignUp, {
      'email': email,
      'verifycode': verifycode,
    });
    return response.fold((l) => l, (r) => r);
  }
}
