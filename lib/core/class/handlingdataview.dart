import 'package:ecommerce_app/core/class/statusrequest.dart';
import 'package:ecommerce_app/core/constant/imageasset.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Handlingdataview extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget? widget;
  const Handlingdataview({
    super.key,
    required this.statusRequest,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Lottie.asset(
              AppImageAsset.souqiLoading,
              width: 250,
              height: 250,
              repeat: true,
            ),
          )
        : statusRequest == StatusRequest.offlineFailure
        ? Center(
            child: Lottie.asset(
              AppImageAsset.souqioffline,
              width: 250,
              height: 250,
              repeat: true,
            ),
          )
        : statusRequest == StatusRequest.serverFailure
        ? Center(
            child: Lottie.asset(
              AppImageAsset.souqiserverfaliure,
              width: 250,
              height: 250,
              repeat: true,
            ),
          )
        : statusRequest == StatusRequest.failure
        ? Center(
            child: Lottie.asset(
              AppImageAsset.souqifaliure,
              width: 250,
              height: 250,
              repeat: true,
            ),
          )
        : widget!;
  }
}
