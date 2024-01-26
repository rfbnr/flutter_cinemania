import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SearchInput extends StatelessWidget {
  final TextEditingController controller;
  final Function(String value)? onChanged;
  final Function(String value)? onFieldSubmitted;
  final Function()? onPressed;
  final VoidCallback? onTap;
  final FocusNode? focusNode;

  const SearchInput({
    super.key,
    required this.controller,
    this.onPressed,
    this.onChanged,
    this.onFieldSubmitted,
    this.onTap,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.black,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: TextFormField(
        onTap: onTap,
        onFieldSubmitted: onFieldSubmitted,
        readOnly: onTap != null,
        focusNode: focusNode,
        controller: controller,
        onChanged: onChanged,
        style: const TextStyle(color: AppColors.white),
        decoration: InputDecoration(
          hintText: "Cari di sini",
          hintStyle: const TextStyle(
            color: AppColors.grey,
          ),
          suffixIcon: IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.search,
              size: 30,
              color: AppColors.primary,
            ),
          ),
          contentPadding: const EdgeInsets.all(16.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              color: AppColors.black,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              color: AppColors.black,
            ),
          ),
        ),
      ),
    );
  }
}
