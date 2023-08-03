import 'package:dota_app_for_swirf_labs/common/colors.dart';
import 'package:flutter/material.dart';

class RefreshIndicatorWidget {
  static RefreshIndicator main(
      {required RefreshCallback onRefresh, required Widget child}) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      color: ConstColors.red50,
      backgroundColor: ConstColors.white,
      triggerMode: RefreshIndicatorTriggerMode.onEdge,
      child: child,
    );
  }
}
