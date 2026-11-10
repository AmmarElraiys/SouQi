import 'package:ecommerce_app/core/class/crud.dart';
import 'package:ecommerce_app/linkapi.dart';

class CheckEmailData {
  Crud crud;
  CheckEmailData(this.crud);

  // تحديد نوع الإرجاع صراحة لتجنب تحذيرات المحلل البرمجي
  Future<dynamic> postData(String email) async {
    var response = await crud.postData(AppLink.checkEmail, {'email': email});
    return response.fold((l) => l, (r) => r);
  }
}
