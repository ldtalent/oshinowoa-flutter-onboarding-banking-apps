import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_banking_app/components/custom_button.dart';
import 'package:flutter_banking_app/config/palette.dart';
import 'package:flutter_banking_app/constants/app_constants.dart';

class HomeScreen extends StatelessWidget {
  static const String id = "home screen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColour,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.bottomCenter,
              image: AssetImage('assets/images/home-background-image.png'),
              fit: BoxFit.contain,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding.h + 10,
              horizontal: kDefaultPadding.w,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 36.0.sp,
                      fontWeight: FontWeight.w800,
                    ),
                    children: <TextSpan>[
                      const TextSpan(text: 'The App\nFor '),
                      TextSpan(
                        text: 'Easy Banking',
                        style: TextStyle(color: Palette.kCustomColour.shade50),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomButton(
                      label: 'Login',
                      buttonBackgroundColor: kPrimaryColour,
                      pressed: () {},
                    ),
                    SizedBox(
                      height: kDefaultPadding.h,
                    ),
                    CustomButton(
                      label: 'Sign Up',
                      buttonBackgroundColor: Palette.kCustomColour.shade400,
                      pressed: (){},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
