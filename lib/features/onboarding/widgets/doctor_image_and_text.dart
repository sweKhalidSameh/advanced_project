import 'package:advanced_project/core/theming/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SvgPicture.asset('assets/svgs/docdoc_logo_low_opacity.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withValues(alpha: 0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset("assets/images/doctor_image.png"),
        ),
        Positioned(
          bottom: 30,
          right: 0,
          left: 0,
          child: Text(
            "Best Doctor\n Appointment App",
            textAlign: TextAlign.center,
            style: Textstyles.font32BlueBold.copyWith(height: 1.5),
          ),
        ),
      ],
    );
  }
}
