import 'package:flutter/material.dart';

import '../../../Commons/app_colors.dart';
import '../../../Commons/app_images.dart';
import '../../../Commons/app_sizes.dart';
import '../../../Widgets/custom_text_field.dart';
import '../../../Widgets/full_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //Variable Declarations
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.kDefaultPadding),
                decoration:
                    const BoxDecoration(gradient: AppColors.radialGradient),
                child: SafeArea(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      const SizedBox(
                        height: AppSizes.kDefaultPadding,
                      ),
                      Image.asset(
                        AppImages.appLogo,
                        width: MediaQuery.of(context).size.width * 0.6,
                      ),
                    ]))),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: AppSizes.kDefaultPadding * 2,
                  ),
                  Text(
                      'Let’s get started! Enter your mobile number or email id',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontWeight: FontWeight.w400,letterSpacing: 0.2)),
                  const SizedBox(
                    height: AppSizes.kDefaultPadding * 2,
                  ),
                  CustomTextField(
                    isBorder: false,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Please enter username';
                      }
                      return null;
                    },
                    controller: _usernameController,
                    hintText: 'Mobile number / Email ID',
                  ),
                  const SizedBox(
                    height: AppSizes.kDefaultPadding,
                  ),
                  CustomTextField(
                    isBorder: false,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Please enter password';
                      }
                      return null;
                    },
                    controller: _passwordController,
                    hintText: 'Password',
                  ),
                  const SizedBox(
                    height: AppSizes.kDefaultPadding / 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            // context.push(const ForgotPassword());
                          },
                          child: Text(
                            'Forgot Password ?',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: AppColors.primary,
                                    fontWeight: FontWeight.w400),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: AppSizes.kDefaultPadding * 1.5,
                  ),
                  FullButton(
                      label: 'Login',
                      onPressed: () {
                        if (_key.currentState!.validate()) {
                          // context.pushReplacement(HomeScreen(
                          //   username: _usernameController.text,
                          // ));
                        }
                      }),
                  const SizedBox(
                    height: AppSizes.kDefaultPadding * 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}