import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navbar_with_getx/routes/routes.dart';
import 'package:navbar_with_getx/widget/utils/custom_button.dart';


class OnboardingScreen extends StatefulWidget {
   const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  TextEditingController text = Get.put(TextEditingController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [

                //=============================> Onboarding Img Section <========================
                SizedBox(height: 10),
             //   Image.asset(AppImages.shadhinWifi, width: 357.w, height: 357.h),
              //  Image.asset(AppImages.shadhinwifiLogo, width: 357.w, height: 200.h),
                Text('স্বাধীন নেটওয়ার্কে \nস্বাগতম',style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.w600,fontSize: 28),textAlign: TextAlign.center,),
                //=============================> GET STARTED Button <========================
                SizedBox(height: 20),
                CustomButton(
                  title: 'Get Started',
                  icon: Icons.golf_course,
                  color: Colors.red,
                  onTap: () {
                    Get.toNamed(AppPage.getnavbar());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
