import 'package:blink_it/domain/constants/app_colors.dart';
import 'package:blink_it/repository/screens/bottomnav/bottomnav_screen.dart';
import 'package:flutter/material.dart';

import '../../widgets/ui_helper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            UiHelper.customImage(img: "Blinkit Onboarding Screen.png"),
            SizedBox(height: 30),
            UiHelper.customImage(img: "image 10.png"),
            SizedBox(height: 5),
            UiHelper.customText(
              text: "India’s last minute app",
              fontfamily: "bold",
              color: Color(0XFF000000),
              fontweight: FontWeight.bold,
              fontsize: 20,
            ),
            SizedBox(height: 20),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 3,
              child: SizedBox(
                width: 350,
                height: 200,
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    UiHelper.customText(
                      text: 'Nikhil',
                      color: Color(0XFF000000),
                      fontweight: FontWeight.w500,
                      fontsize: 15,
                    ),
                    UiHelper.customText(
                      text: '78277XXXX',
                      color: Appcolors.greyText,
                      fontweight: FontWeight.w700,
                      fontsize: 14,
                      fontfamily: "bold",
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 295,
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0XFFE23744),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomnavScreen()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: UiHelper.customText(
                                  text: 'Login with',
                                  color: Color(0XFFFFFFFF),
                                  fontweight: FontWeight.w700,
                                  fontsize: 14,
                                  fontfamily: "bold"),
                            ),
                            SizedBox(width: 5),
                            UiHelper.customImage(img: "image 9.png")
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    UiHelper.customText(
                      text:
                          'Access your saved addresses from Zomato automatically!',
                      color: Appcolors.greyText,
                      fontweight: FontWeight.w400,
                      fontsize: 10,
                    ),
                    SizedBox(height: 20),
                    UiHelper.customText(
                      textdecoration: TextDecoration.underline,
                      text: 'or login with phone number',
                      color: Color(0XFF269237),
                      fontweight: FontWeight.w400,
                      fontsize: 14,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
