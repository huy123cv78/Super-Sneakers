import 'package:appbangiay/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark= HHelperFunctions.isDarkMode(context);
    return Positioned(
      right: HSizes.defaultSpace*0.5,
      bottom: HDeviceUtils.getBottomNavigationBarHeight()*0.1,
      child: ElevatedButton(
        onPressed: () =>OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder(),backgroundColor: dark ? HColors.primary: HColors.primary),
        child: const Icon(Iconsax.arrow_right_3),
      ),
      );
  }
}