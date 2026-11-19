import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomSearchHomeWidget extends StatelessWidget {
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final VoidCallback? onPressedSearch;
  final VoidCallback? onPressedFilter;
  final VoidCallback? onPressedClear;
  final String title;

  const CustomSearchHomeWidget({
    super.key,
    this.controller,
    this.onChanged,
    this.onSubmitted,
    this.onPressedSearch,
    this.onPressedFilter,
    this.onPressedClear,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.white,
      borderRadius: BorderRadius.circular(16),
      elevation: 2,
      shadowColor: Colors.black.withOpacity(0.08),
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        height: 54,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Row(
          children: [
            InkWell(
              onTap: onPressedSearch,
              borderRadius: BorderRadius.circular(10),
              child: const Padding(
                padding: EdgeInsets.all(6),
                child: Icon(
                  Icons.search_rounded,
                  color: AppColor.primary,
                  size: 24,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: TextField(
                controller: controller,
                onChanged: onChanged,
                onSubmitted: onSubmitted,
                textInputAction: TextInputAction.search,
                style: const TextStyle(
                  color: AppColor.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  hintText: title,
                  hintStyle: const TextStyle(
                    color: AppColor.hint,
                    fontSize: 13.5,
                    fontWeight: FontWeight.w400,
                  ),
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 10),
                ),
              ),
            ),
            if (onPressedClear != null)
              IconButton(
                onPressed: onPressedClear,
                visualDensity: VisualDensity.compact,
                icon: Icon(
                  Icons.close_rounded,
                  color: Colors.grey.shade500,
                  size: 20,
                ),
              ),
            const SizedBox(width: 4),
            InkWell(
              onTap: onPressedFilter,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColor.primary.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.tune_rounded,
                  color: AppColor.primary,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
