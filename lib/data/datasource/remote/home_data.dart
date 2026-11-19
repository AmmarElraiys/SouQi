import 'package:ecommerce_app/core/class/crud.dart';
import 'package:ecommerce_app/linkapi.dart';

class HomeData {
  Crud crud;
  HomeData(this.crud);

  // تحديد نوع الإرجاع صراحة لتجنب تحذيرات المحلل البرمجي
  Future<dynamic> getData() async {
    var response = await crud.postData(AppLink.hmoe, {});
    return response.fold((l) => l, (r) => r);
  }
}
