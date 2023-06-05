import 'package:flutter/material.dart';

import '../Commons/app_colors.dart';
import '../Commons/app_icons.dart';
import '../Commons/app_sizes.dart';
import 'custom_divider.dart';


class FilterDialog extends StatefulWidget {
  const FilterDialog({Key? key}) : super(key: key);

  @override
  State<FilterDialog> createState() => _FilterDialogState();
}

class _FilterDialogState extends State<FilterDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.65,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: AppSizes.kDefaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Image.asset(
                        AppIcons.filterIcon,
                        width: 24,
                        height: 24,
                        color: AppColors.primary,
                      ),
                      const SizedBox(
                        width: AppSizes.kDefaultPadding / 3,
                      ),
                      Text(
                        'Filter',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                color: AppColors.darkGrey.withOpacity(0.8),
                                fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Image.asset(
                    AppIcons.closeIcon,
                    width: 16,
                    height: 16,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ),
          const CustomDivider(),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: AppSizes.kDefaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Filter by SEM',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: AppColors.darkGrey.withOpacity(0.8),
                      fontWeight: FontWeight.w500),
                ),
                InkWell(
                    onTap: () {
                      setState(() {});
                    },
                    child: Text(
                      'Clear',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                              color: AppColors.primary,
                              fontWeight: FontWeight.w400),
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: AppSizes.kDefaultPadding,
          ),
        ],
      ),
    );
  }
}
