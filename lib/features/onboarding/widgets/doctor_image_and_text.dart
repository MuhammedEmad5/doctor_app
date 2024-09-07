import 'package:doctor_app/core/theming/styles.dart';
import 'package:doctor_app/core/theming/svgs_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(SvgsManager.onboardingLogoWithOpacity),
        Container(
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white, Colors.white.withOpacity(0.0)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: const [0.14, 0.4])),
            child: Image.asset(ImagesManager.doctorImage)),
        Positioned(
          bottom: 20.h,
          right: 0,
          left: 0,
          child: Text(
            'Best Doctor \n Appointment App',
            textAlign: TextAlign.center,
            style: TextStyles.font32BlueW700.copyWith(height: 1.4.h),
          ),
        ),
      ],
    );
  }
}
