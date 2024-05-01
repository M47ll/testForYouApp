import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:work_test/core/constant/color.dart';
import 'package:work_test/core/constant/image_asset.dart';
import 'package:work_test/view/widget/profile/custom_info_row.dart';

class AboutWithData extends StatelessWidget {
  const AboutWithData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
          const SizedBox(
            height: 20,
          ),
          const CustomInfoRow(
            title: "Birthday: ",
            content: "28 / 08 / 1995 (Age 28)",
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomInfoRow(
            title: "Horoscope: ",
            content: "Virgo",
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomInfoRow(
            title: "Zodiac: ",
            content: "Pig",
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomInfoRow(
            title: "Height: ",
            content: "175 cm",
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomInfoRow(
            title: "Weight: ",
            content: "69 kg",
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
