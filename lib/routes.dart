import 'package:ecommerce_app/core/constant/approutes.dart';
import 'package:ecommerce_app/view/screen/auth/login.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login: (context) => const Login(),
};
