import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:work_test/core/constant/color.dart';
import 'package:work_test/core/constant/image_asset.dart';

class AboutIfNull extends StatelessWidget {
  const AboutIfNull({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: 120,
      decoration: const BoxDecoration(
        color: AppColors.containerBackground2,
        borderRadius: BorderRadius.all(Radius.circular(14)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "About",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SvgPicture.asset(
                ImageAsset.editPen,
                height: 17,
                width: 17,
              ),
            ],
          ),
          Text(
            "Add in your your to help others know you better",
            style: TextStyle(
                fontSize: 16, color: AppColors.white.withOpacity(0.5)),
          ),
        ],
      ),
    );
  }
}
