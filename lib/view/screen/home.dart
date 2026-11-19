import 'package:ecommerce_app/controller/home_controller.dart';
import 'package:ecommerce_app/core/class/handlingdataview.dart';
import 'package:ecommerce_app/core/constant/color.dart';
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
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
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
                  CustomProductsHomeWidget(
                    action: 'الأقسام',
                    title: 'عرض الكل',
                  ),
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
      ),

      // Bottom navigation
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColor.primary,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        elevation: 10,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 11,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded),
            label: 'الأقسام',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'المفضلة',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'السلة',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'حسابي',
          ),
        ],
      ),
    );
  }
}
