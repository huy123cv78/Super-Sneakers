import 'package:appbangiay/common/widgets/success_screen/success_screen.dart';
import 'package:appbangiay/features/authentication/screens/login/login.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/image_strings.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/constants/text_strings.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(()=> const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(
        //pading to give default equal space on all sides in all screens
        child: Padding(
          padding: const EdgeInsets.all(HSizes.defaultSpace),
          child: Column(
            children: [
              //image
              Image(image: const AssetImage(HImages.deliveredEmailIllustration), width: HHelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: HSizes.spaceBtwSections),

              //title va subtitle
              Text(HTexts.confirmEmail,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),
              const SizedBox(height: HSizes.spaceBtwItems),
              Text('PQH@gmail.com',style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center),
              const SizedBox(height:HSizes.spaceBtwItems),
              Text(HTexts.confirmEmailSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
              const SizedBox(height:HSizes.spaceBtwSections),

              //buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: ()=>Get.to(()=> SuccessScreen(
                  image: HImages.staticSuccessIllustration,
                  title: HTexts.yourAccountCreatedTitle,
                  subTitle: HTexts.yourAccountCreatedSubTitle,
                  onPressed: () =>Get.to(()=>const LoginScreen()),
                ),
              ),
            style: ButtonStyle( backgroundColor: MaterialStateProperty.all<Color>(HColors.primary),
            side: MaterialStateProperty.all<BorderSide>(
        const BorderSide(color: Colors.white), // Màu của border
      ),
            ),
            child: const Text(HTexts.tContinue),
            ),
                ),
              const SizedBox(height:HSizes.spaceBtwItems),
              SizedBox(width: double.infinity,child: TextButton(onPressed: (){},child: const Text(HTexts.resendEmail))),
            ],
          ),
          ),
      ),
    );
  }
}