import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 2,
            bottom: 2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  415,
                ),
                width: getHorizontalSize(
                  344,
                ),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLogo1,
                      height: getVerticalSize(
                        166,
                      ),
                      width: getHorizontalSize(
                        156,
                      ),
                      alignment: Alignment.bottomRight,
                      margin: getMargin(
                        right: 84,
                        bottom: 104,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgPhoto,
                      height: getVerticalSize(
                        126,
                      ),
                      width: getHorizontalSize(
                        127,
                      ),
                      alignment: Alignment.topLeft,
                      margin: getMargin(
                        left: 22,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgPhoto97x74,
                      height: getVerticalSize(
                        97,
                      ),
                      width: getHorizontalSize(
                        74,
                      ),
                      alignment: Alignment.bottomLeft,
                      margin: getMargin(
                        bottom: 51,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgPhoto86x79,
                      height: getVerticalSize(
                        86,
                      ),
                      width: getHorizontalSize(
                        79,
                      ),
                      alignment: Alignment.bottomRight,
                      margin: getMargin(
                        right: 5,
                        bottom: 67,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgPhoto85x88,
                      height: getVerticalSize(
                        85,
                      ),
                      width: getHorizontalSize(
                        88,
                      ),
                      alignment: Alignment.topRight,
                      margin: getMargin(
                        top: 40,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgUser,
                      height: getVerticalSize(
                        26,
                      ),
                      width: getHorizontalSize(
                        24,
                      ),
                      alignment: Alignment.bottomLeft,
                      margin: getMargin(
                        left: 92,
                        bottom: 143,
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
                        top: 140,
                        right: 84,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: getSize(
                          19,
                        ),
                        width: getSize(
                          19,
                        ),
                        margin: getMargin(
                          left: 104,
                          top: 125,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.orangeA70099,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              9,
                            ),
                          ),
                          border: Border.all(
                            color: ColorConstant.black90033,
                            width: getHorizontalSize(
                              1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgUser,
                      height: getVerticalSize(
                        15,
                      ),
                      width: getHorizontalSize(
                        12,
                      ),
                      alignment: Alignment.bottomRight,
                      margin: getMargin(
                        right: 96,
                        bottom: 89,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgPhoto61x51,
                      height: getVerticalSize(
                        61,
                      ),
                      width: getHorizontalSize(
                        51,
                      ),
                      alignment: Alignment.bottomRight,
                      margin: getMargin(
                        right: 136,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                width: getHorizontalSize(
                  298,
                ),
                margin: getMargin(
                  left: 22,
                  right: 39,
                  bottom: 90,
                ),
                child: Text(
                  "The  No 1 Social Media App To Monetize Your Content",
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsBold27,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
