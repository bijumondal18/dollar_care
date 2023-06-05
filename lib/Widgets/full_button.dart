import 'package:flutter/material.dart';

import '../Commons/app_colors.dart';
import '../Commons/app_icons.dart';
import '../Commons/app_sizes.dart';

class FullButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color bgColor;
  final bool? arrowIconVisible;

  const FullButton(
      {Key? key,
      required this.label,
      required this.onPressed,
      this.bgColor = AppColors.secondary,
      this.arrowIconVisible = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(0),
        backgroundColor: MaterialStateProperty.all<Color>(AppColors.secondary),
        minimumSize: MaterialStateProperty.all<Size>(
            const Size.fromHeight(AppSizes.buttonHeight)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius * 5),
          //side: const BorderSide(color: AppColors.secondary)
        )),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: AppColors.white, fontWeight: FontWeight.w600),
          ),
          arrowIconVisible!
              ? const SizedBox(
                  width: AppSizes.kDefaultPadding,
                )
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
