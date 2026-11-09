import 'package:ecommerce_app/core/class/statusrequest.dart';

// ignore: strict_top_level_inference
handlingData(response) {
  if (response is StatusRequest) {
    return response;
  } else {
    return StatusRequest.success;
  }
}
