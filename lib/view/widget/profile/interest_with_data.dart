import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:work_test/core/constant/color.dart';
import 'package:work_test/core/constant/image_asset.dart';

class InterestWithData extends StatelessWidget {
  const InterestWithData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: 110,
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
                "Interest",
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
          Row(
            children: [
              Container(
                height: 40,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                    color: AppColors.white.withOpacity(0.06),
                    borderRadius: BorderRadius.circular(20)),
                child: const Text("Basketball"),
              ),
              const SizedBox(width: 10),
              Container(
                height: 40,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                    color: AppColors.white.withOpacity(0.06),
                    borderRadius: BorderRadius.circular(20)),
                child: const Text("music"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
