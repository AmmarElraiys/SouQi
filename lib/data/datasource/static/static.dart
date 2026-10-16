import 'package:ecommerce_app/core/constant/imageasset.dart';
import 'package:ecommerce_app/data/model/onboardingmodel.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    title: 'Choose Products',
    image: AppImageAsset.onBoardingOne,
    body:
        'Browse and select from a wide range of products available in our store.',
  ),
  OnBoardingModel(
    title: 'Easy And Safe Payment',
    image: AppImageAsset.onBoardingTwo,
    body: 'Make secure payments with our\n easy-to-use payment options.',
  ),

  OnBoardingModel(
    title: 'Track Your Orders',
    image: AppImageAsset.onBoardingThree,
    body:
        'Monitor the status of your orders at any time during the delivery process.',
  ),
  OnBoardingModel(
    title: 'Exclusive Discounts',
    image: AppImageAsset.onBoardingFour,
    body:
        'Take advantage of our exclusive discounts and sales events. Save money while shopping for your favorite products.',
  ),
];
