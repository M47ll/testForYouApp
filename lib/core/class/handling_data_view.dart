import 'package:flutter/material.dart';
import 'package:work_test/core/class/status_request.dart';
import 'package:work_test/core/constant/color.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget child;

  const HandlingDataView({
    Key? key,
    required this.statusRequest,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : statusRequest == StatusRequest.offlineFailure
            ? const Center(
                child: Icon(
                  Icons.signal_wifi_off,
                  color: AppColors.red,
                ),
              )
            : statusRequest == StatusRequest.serverFailure
                ? const Center(
                    child: Icon(
                      Icons.computer_outlined,
                      color: AppColors.red,
                    ),
                  )
                : statusRequest == StatusRequest.failure
                    ? const Center(
                        child: Icon(
                          Icons.error,
                          color: AppColors.red,
                        ),
                      )
                    : child;
  }
}
