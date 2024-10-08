import 'package:appbangiay/common/styles/spacing_styles.dart';
// import 'package:appbangiay/common/widgets/form_divider.dart';
import 'package:appbangiay/common/widgets/login_signup/form_divider.dart';
import 'package:appbangiay/common/widgets/login_signup/social_buttons.dart';
// import 'package:appbangiay/common/widgets/social_buttons.dart';
import 'package:appbangiay/features/authentication/screens/login/widgets/login_from.dart';
import 'package:appbangiay/features/authentication/screens/login/widgets/login_header.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/constants/text_strings.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HColors.primary,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            //Add this CustomPaint widget to the Widget Tree
            CustomPaint(
              size: Size(
                  HHelperFunctions.screenWidth(),
                  (HHelperFunctions.screenWidth() * 2)
                      .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter(),
            ),
            Padding(
              padding: HSpacingStyle.paddingWithAppBarHeight,
              child: Column(
                children: [
                  //logo,title va sub-title HLoginHeader
                  const HLoginHeader(),

                  //Form cho nhap du lieu HLoginForm
                  const HLoginForm(),

                  //DIVIDER HFormDivider
                  HFormDivider(dividerText: HTexts.orSignInWith.capitalize!),
                  const SizedBox(height: HSizes.spaceBtwSections),

                  //footer HSocialButtons
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

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 1.100751, size.height * 0.2043995);
    path_0.cubicTo(
        size.width * 1.098722,
        size.height * 0.1718960,
        size.width * 1.041807,
        size.height * 0.1497497,
        size.width * 0.9875072,
        size.height * 0.1603338);
    path_0.lineTo(size.width * 0.9357101, size.height * 0.1704295);
    path_0.cubicTo(
        size.width * 0.8815459,
        size.height * 0.1809863,
        size.width * 0.8214855,
        size.height * 0.1727948,
        size.width * 0.7817440,
        size.height * 0.1494295);
    path_0.lineTo(size.width * 0.7655821, size.height * 0.1399289);
    path_0.cubicTo(
        size.width * 0.7129976,
        size.height * 0.1090115,
        size.width * 0.6369348,
        size.height * 0.09471163,
        size.width * 0.5621401,
        size.height * 0.1016819);
    path_0.lineTo(size.width * 0.4553309, size.height * 0.1123740);
    path_0.cubicTo(
        size.width * 0.3997657,
        size.height * 0.1179364,
        size.width * 0.3430266,
        size.height * 0.1186720,
        size.width * 0.2870700,
        size.height * 0.1145555);
    path_0.lineTo(size.width * 0.2365461, size.height * 0.1108387);
    path_0.cubicTo(
        size.width * 0.1566816,
        size.height * 0.1049635,
        size.width * 0.08393454,
        size.height * 0.08180520,
        size.width * 0.03355773,
        size.height * 0.04621915);
    path_0.lineTo(size.width * 0.01235461, size.height * 0.03124118);
    path_0.cubicTo(
        size.width * -0.02537826,
        size.height * 0.004586744,
        size.width * -0.09990870,
        size.height * 0.01105917,
        size.width * -0.1218063,
        size.height * 0.04289207);
    path_0.cubicTo(
        size.width * -0.1422145,
        size.height * 0.07255978,
        size.width * -0.1343420,
        size.height * 0.1060815,
        size.width * -0.1009505,
        size.height * 0.1316967);
    path_0.lineTo(size.width * -0.05237585, size.height * 0.1689590);
    path_0.cubicTo(
        size.width * -0.03662657,
        size.height * 0.1810410,
        size.width * -0.02942029,
        size.height * 0.1960205,
        size.width * -0.03217222,
        size.height * 0.2109562);
    path_0.lineTo(size.width * -0.1457901, size.height * 0.8276334);
    path_0.cubicTo(
        size.width * -0.1509377,
        size.height * 0.8555718,
        size.width * -0.1212783,
        size.height * 0.8818126,
        size.width * -0.07432319,
        size.height * 0.8908632);
    path_0.lineTo(size.width * 0.1252949, size.height * 0.9293352);
    path_0.cubicTo(
        size.width * 0.1935570,
        size.height * 0.9424911,
        size.width * 0.2663140,
        size.height * 0.9464022,
        size.width * 0.3377271,
        size.height * 0.9407551);
    path_0.lineTo(size.width * 0.4804179, size.height * 0.9294706);
    path_0.cubicTo(
        size.width * 0.5721860,
        size.height * 0.9222134,
        size.width * 0.6656860,
        size.height * 0.9307743,
        size.width * 0.7487415,
        size.height * 0.9540383);
    path_0.lineTo(size.width * 0.8469034, size.height * 0.9815321);
    path_0.lineTo(size.width * 0.9952923, size.height * 1.022766);
    path_0.cubicTo(
        size.width * 1.067386,
        size.height * 1.042800,
        size.width * 1.151157,
        size.height * 1.012055,
        size.width * 1.148321,
        size.height * 0.9666033);
    path_0.lineTo(size.width * 1.100751, size.height * 0.2043995);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
