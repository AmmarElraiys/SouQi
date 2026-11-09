import 'package:ecommerce_app/core/class/statusrequest.dart';
import 'package:ecommerce_app/core/functions/handlingdata.dart';
import 'package:ecommerce_app/data/datasource/remote/test_data.dart';
import 'package:get/get.dart';

class TestController extends GetxController {
  TestData testData = TestData(Get.find());
  List data = [];
  late StatusRequest statusRequest;

  // ignore: strict_top_level_inference
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await testData.getData();
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  onInit() {
    getData();
    super.onInit();
  }
}
