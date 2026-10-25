import 'package:get/get.dart';

String? validInput(String? val, int min, int max, String type) {
  if (val == null || val.trim().isEmpty) {
    return '62'.tr;
  }

  if (type == 'username' && !GetUtils.isUsername(val)) {
    return '63'.tr;
  }

  if (type == 'email' && !GetUtils.isEmail(val.trim())) {
    return '64'.tr;
  }

  if (type == 'phone' && !GetUtils.isPhoneNumber(val.trim())) {
    return '65'.tr;
  }

  if (type == 'password' && val.length < min) {
    return '66'.trParams({'min': '$min'});
  }

  if (val.length < min) {
    return '67'.trParams({'min': '$min'});
  }

  if (val.length > max) {
    return '68'.trParams({'max': '$max'});
  }

  return null;
}
