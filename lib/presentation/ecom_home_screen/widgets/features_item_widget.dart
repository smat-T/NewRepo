import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';

// ignore: must_be_immutable
class FeaturesItemWidget extends StatelessWidget {
  FeaturesItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          height: getVerticalSize(
            160,
          ),
          width: getHorizontalSize(
            260,
          ),
          margin: getMargin(
            right: 15,
          ),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage90,
                height: getVerticalSize(
                  160,
                ),
                width: getHorizontalSize(
                  260,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    20,
                  ),
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 15,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: getHorizontalSize(
                          163,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "50% Off\n",
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(
                                    25,
                                  ),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: "On everything today",
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(
                                    16,
                                  ),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 7,
                        ),
                        child: Text(
                          "With code:FSCREATION",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold11,
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          top: 15,
                        ),
                        padding: getPadding(
                          left: 13,
                          top: 4,
                          right: 13,
                          bottom: 4,
                        ),
                        decoration: AppDecoration.fillBlack900.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
