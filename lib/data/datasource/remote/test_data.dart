import 'package:ecommerce_app/core/class/crud.dart';
import 'package:ecommerce_app/linkapi.dart';

class TestData {
  Crud crud;
  TestData(this.crud);

  // تحديد نوع الإرجاع صراحة لتجنب تحذيرات المحلل البرمجي
  Future<dynamic> getData() async {
    var response = await crud.postData(AppLink.testServer, {});
    return response.fold((l) => l, (r) => r);
  }
}
