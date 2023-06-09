import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';

class WelcomeToAfsoenOneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        body: Container(
          height: size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgUser,
                height: getVerticalSize(
                  26,
                ),
                width: getHorizontalSize(
                  24,
                ),
                alignment: Alignment.topLeft,
                margin: getMargin(
                  left: 92,
                  top: 248,
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgGroup47396,
                height: getVerticalSize(
                  26,
                ),
                width: getHorizontalSize(
                  24,
                ),
                alignment: Alignment.topRight,
                margin: getMargin(
                  top: 142,
                  right: 100,
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: getPadding(
                    left: 71,
                    top: 119,
                    right: 71,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 30,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: getVerticalSize(
                                78,
                              ),
                              width: getHorizontalSize(
                                74,
                              ),
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgPhoto,
                                    height: getVerticalSize(
                                      68,
                                    ),
                                    width: getHorizontalSize(
                                      74,
                                    ),
                                    alignment: Alignment.topCenter,
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgUserOrangeA70002,
                                    height: getVerticalSize(
                                      10,
                                    ),
                                    width: getHorizontalSize(
                                      11,
                                    ),
                                    alignment: Alignment.bottomRight,
                                    margin: getMargin(
                                      right: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgPhoto85x88,
                              height: getVerticalSize(
                                46,
                              ),
                              width: getHorizontalSize(
                                51,
                              ),
                              margin: getMargin(
                                top: 21,
                                bottom: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          right: 2,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgPhoto52x61,
                              height: getVerticalSize(
                                52,
                              ),
                              width: getHorizontalSize(
                                61,
                              ),
                              margin: getMargin(
                                top: 66,
                                bottom: 27,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: getVerticalSize(
                                        98,
                                      ),
                                      width: getHorizontalSize(
                                        90,
                                      ),
                                      margin: getMargin(
                                        bottom: 11,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant.imgLogo1,
                                            height: getSize(
                                              90,
                                            ),
                                            width: getSize(
                                              90,
                                            ),
                                            alignment: Alignment.topCenter,
                                          ),
                                          CustomImageView(
                                            svgPath: ImageConstant.imgUser,
                                            height: getVerticalSize(
                                              8,
                                            ),
                                            width: getHorizontalSize(
                                              6,
                                            ),
                                            alignment: Alignment.bottomRight,
                                            margin: getMargin(
                                              right: 6,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgPhoto86x79,
                                      height: getVerticalSize(
                                        46,
                                      ),
                                      width: getHorizontalSize(
                                        45,
                                      ),
                                      margin: getMargin(
                                        top: 63,
                                      ),
                                    ),
                                  ],
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgPhoto61x51,
                                  height: getVerticalSize(
                                    33,
                                  ),
                                  width: getHorizontalSize(
                                    29,
                                  ),
                                  margin: getMargin(
                                    left: 30,
                                    top: 3,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCuteafricanar,
                height: getVerticalSize(
                  448,
                ),
                width: getHorizontalSize(
                  360,
                ),
                alignment: Alignment.bottomCenter,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
