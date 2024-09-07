import 'package:doctor_app/core/theming/svgs_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/theming/styles.dart';


class DocDocLogoAndNameRow extends StatelessWidget {
  const DocDocLogoAndNameRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(SvgsManager.docdocLogo),
        SizedBox(width: 10.w),
        Text(
          'Docdoc',
          style: TextStyles.font24BlackW700,
        )
      ],
    );
  }
}
