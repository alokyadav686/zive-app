import 'package:flutter/material.dart';
import 'package:zive/utils/constants/sizes.dart';

class ZiveSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: ZiveSizes.appBarHeight,
    left: ZiveSizes.defaultSpace,
    right: ZiveSizes.defaultSpace,
    bottom: ZiveSizes.defaultSpace,
  );
}
