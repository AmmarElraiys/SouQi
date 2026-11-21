import 'package:ecommerce_app/view/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;
  List<Widget> pages = [
    const Home(),
    const Center(child: Text('المفضلة')),
    const Center(child: Text('سلة التسوق')),
    const Center(child: Text('الاعدادات')),
    const Center(child: Text('حسابي')),
  ];
  final navItems = [
    {'icon': Icons.home_outlined, 'label': 'الرئيسية'},
    {'icon': Icons.favorite_border, 'label': 'المفضلة'},
    {'icon': Icons.settings_outlined, 'label': 'الاعدادات'},
    {'icon': Icons.person_outline, 'label': 'حسابي'},
  ];
  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
}
