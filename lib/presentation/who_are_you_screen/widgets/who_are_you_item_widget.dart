import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';

// ignore: must_be_immutable
class WhoAreYouItemWidget extends StatelessWidget {
  WhoAreYouItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        180,
      ),
      width: getHorizontalSize(
        153,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgWxm465om4j4,
            height: getVerticalSize(
              180,
            ),
            width: getHorizontalSize(
              153,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                12,
              ),
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Container(
                height: getVerticalSize(
                  180,
                ),
                width: getHorizontalSize(
                  153,
                ),
                decoration: AppDecoration.gradientGray90000Gray90099.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img270591,
                      height: getVerticalSize(
                        180,
                      ),
                      width: getHorizontalSize(
                        153,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          12,
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: getPadding(
                          bottom: 23,
                        ),
                        child: Text(
                          "",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAbhayaLibreMedium16WhiteA700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
