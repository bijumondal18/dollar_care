import 'package:dollar_care/Commons/app_colors.dart';
import 'package:dollar_care/Commons/app_sizes.dart';
import 'package:dollar_care/Widgets/custom_divider.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: AppSizes.buttonHeight * 2.5,
              padding: const EdgeInsets.all(AppSizes.kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            EvaIcons.pin,
                            color: AppColors.primaryDark,
                            size: 20,
                          ),
                          const SizedBox(
                            width: AppSizes.kDefaultPadding / 3,
                          ),
                          Text(
                            'Location',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(fontWeight: FontWeight.w400),
                          ),
                          const Icon(
                            EvaIcons.arrowIosDownward,
                            color: AppColors.darkGrey,
                            size: 18,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                EvaIcons.person,
                                size: 24,
                                color: AppColors.darkGrey.withOpacity(0.7),
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                EvaIcons.bell,
                                size: 24,
                                color: AppColors.darkGrey.withOpacity(0.7),
                              )),
                        ],
                      )
                    ],
                  ),
                  Expanded(
                    child: Container(
                      height: AppSizes.buttonHeight,
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppSizes.kDefaultPadding),
                      decoration: BoxDecoration(
                        color: AppColors.bg,
                        borderRadius:
                            BorderRadius.circular(AppSizes.cardCornerRadius * 5),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            EvaIcons.searchOutline,
                            color: AppColors.grey,
                            size: 24,
                          ),
                          const SizedBox(
                            width: AppSizes.kDefaultPadding / 2,
                          ),
                          Text(
                            'Search for Doctor/Clinic',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.darkGrey.withOpacity(0.9)),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const CustomDivider(),

          ],
        ),
      ),
    );
  }
}
