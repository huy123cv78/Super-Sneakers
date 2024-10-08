import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.additionalImage,
  }) : super(key: key);

  final String image, title, subTitle, additionalImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: const EdgeInsets.all(HSizes.defaultSpace*0),
      padding: const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                height: HHelperFunctions.screenHeight() * 1,
                child: Expanded(
                  flex: 1,
                  child: Image(
                    width: HHelperFunctions.screenWidth() * 1,
                    height: HHelperFunctions.screenHeight() * 1,
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                height: 250,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 300,
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(110),
                        topRight: Radius.circular(110)),
                  ),
                  child: Column(children: [
                    SizedBox(
                        height: HSizes
                            .spaceBtwItems), // Add space between image and title
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.headlineMedium,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                        height: HSizes
                            .spaceBtwItems), // Add space between title and subTitle
                    Text(
                      subTitle,
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ), // Add space between subTitle and additionalImage
                    const Expanded(child: SizedBox()),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Image(
                        width: HHelperFunctions.screenWidth() *
                            0.4, // Adjust width as needed
                        height: HHelperFunctions.screenHeight() *
                            0.1, // Adjust height as needed
                        image: AssetImage(additionalImage),
                      ),
                    ),
                  ]),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
