import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';

// ignore: must_be_immutable
class AppbarCircleimage1 extends StatelessWidget {
  AppbarCircleimage1({
    this.imagePath,
    this.svgPath,
    this.margin,
    this.onTap,
  });

  String? imagePath;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusStyle.roundedBorder8,
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          svgPath: svgPath,
          imagePath: imagePath,
          height: getSize(
            15,
          ),
          width: getSize(
            15,
          ),
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            getHorizontalSize(
              7,
            ),
          ),
        ),
      ),
    );
  }
}
