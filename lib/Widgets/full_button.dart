import 'package:flutter/material.dart';

import '../Commons/app_colors.dart';
import '../Commons/app_icons.dart';
import '../Commons/app_sizes.dart';

class FullButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color bgColor;
  final bool? arrowIconVisible;

  const FullButton({Key? key,
    required this.label,
    required this.onPressed,
    this.bgColor = AppColors.primary,
    this.arrowIconVisible = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          primary: bgColor,
          minimumSize: const Size.fromHeight(AppSizes.buttonHeight)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: Theme
                .of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColors.white, fontWeight: FontWeight.w400),
          ),
          arrowIconVisible!
              ? const SizedBox(width: AppSizes.kDefaultPadding,)
              : const SizedBox(),
          arrowIconVisible!
              ? Image.asset(
            AppIcons.forwardArrowIcon,
            width: 24,
            height: 24,
            color: AppColors.white,
          )
              : const SizedBox()
        ],
      ),
    );
  }
}
