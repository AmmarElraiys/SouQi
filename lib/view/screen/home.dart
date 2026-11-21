import 'package:ecommerce_app/controller/home_controller.dart';
import 'package:ecommerce_app/core/class/handlingdataview.dart';
// import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/home/custom_items_discount_widget.dart';
import 'package:ecommerce_app/view/widget/home/custom_categories_home_widget.dart';
import 'package:ecommerce_app/view/widget/home/custom_products_home_widget.dart';
import 'package:ecommerce_app/view/widget/home/custom_promotional_banner_widget.dart';
import 'package:ecommerce_app/view/widget/home/custom_search_home_widget.dart';
import 'package:ecommerce_app/view/widget/home/customappbarhome_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return SafeArea(
      child: GetBuilder<HomeControllerImp>(
        builder: (controller) => Handlingdataview(
          statusRequest: controller.statusRequest,
          widget: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                CustomappbarhomeWidget(
                  title: 'مرحباً بك 👋',
                  text: 'اكتشف عالم سوقي',
                ),
                // Search
                CustomSearchHomeWidget(
                  title: 'ابحث عن منتجك المفضل...',
                  onPressedSearch: () {},
                ),
                // Promotional banner
                CustomPromotionalBannerWidget(
                  title: 'عروض مميزة لك!',
                  text: 'اكتشف منتجاتك المفضلة\nبأفضل الأسعار',
                  texttwo: 'تسوق الآن',
                  onPressed: () {},
                ),
                // Categories
                CustomProductsHomeWidget(action: 'الأقسام', title: 'عرض الكل'),
                const SizedBox(height: 16),
                CustomListCategoriesHomeWidget(),
                const SizedBox(height: 28),
                // Products
                CustomProductsHomeWidget(
                  action: 'الأكثر مبيعاً',
                  title: 'عرض الكل',
                ),
                const SizedBox(height: 16),

                CustomItemsDiscountWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
