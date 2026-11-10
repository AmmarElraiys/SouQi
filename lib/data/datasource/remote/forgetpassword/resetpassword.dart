import 'package:ecommerce_app/core/class/crud.dart';
import 'package:ecommerce_app/linkapi.dart';

class ResetPasswordData {
  Crud crud;
  ResetPasswordData(this.crud);

  // تحديد نوع الإرجاع صراحة لتجنب تحذيرات المحلل البرمجي
  Future<dynamic> postData(String email, String password) async {
    var response = await crud.postData(AppLink.resetPassword, {
      'email': email,
      'password': password,
    });
    return response.fold((l) => l, (r) => r);
  }
}
