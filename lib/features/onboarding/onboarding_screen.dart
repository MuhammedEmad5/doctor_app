import 'package:doctor_app/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:doctor_app/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:doctor_app/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theming/styles.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30.h ,bottom: 30.h),
          child: Column(
            children: [
              const DocDocLogoAndNameRow(),
              SizedBox(height: 30.h),
              const DoctorImageAndText(),
              SizedBox(height: 5.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      textAlign: TextAlign.center,
                      style: TextStyles.font12GrayW400,
                    ),
                    SizedBox(height: 30.h),
                    const GetStartedButton(),
                  ],
                ),
              ),

            ],
          ),
        ),
      )),
    );
  }
}