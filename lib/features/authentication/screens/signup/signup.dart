import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:appbangiay/common/widgets/appbar/appbar.dart';
import 'package:appbangiay/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:appbangiay/common/widgets/login_signup/form_divider.dart';
import 'package:appbangiay/common/widgets/login_signup/social_buttons.dart';
import 'package:appbangiay/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:appbangiay/utils/constants/image_strings.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HPrimaryHeaderContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Image(
                      image: AssetImage(HImages.logo1),
                      width: 300,
                      height: 200,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: HSizes.spaceBtnItems),
                ],
              ),
            ),
            //body
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: HSizes.defaultSpace),
              child: Column(
                children: [
                  Text(
                    HTexts.signupTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: HSizes.spaceBtnSections),
                  const Text('Hãy điền thông tin theo yêu cầu',style: TextStyle(fontWeight: FontWeight.w300)),
                  const SizedBox(height: HSizes.spaceBtwSections),
                  const HSignupForm(),
                  const SizedBox(height: HSizes.spaceBtwSections),
                  const HFormDivider(dividerText: HTexts.orSignUpWith),
                  const SizedBox(height: HSizes.spaceBtwSections),
                  const HSocialButtons(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
