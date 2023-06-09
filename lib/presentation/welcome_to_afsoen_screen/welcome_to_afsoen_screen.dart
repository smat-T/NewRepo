import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';

class WelcomeToAfsoenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        body: Container(
          height: size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgAffproj51,
                height: getVerticalSize(
                  491,
                ),
                width: getHorizontalSize(
                  360,
                ),
                alignment: Alignment.bottomCenter,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgAfsologo1,
                height: getVerticalSize(
                  224,
                ),
                width: getHorizontalSize(
                  212,
                ),
                alignment: Alignment.topCenter,
                margin: getMargin(
                  top: 72,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
