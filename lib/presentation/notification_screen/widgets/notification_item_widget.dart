import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';

// ignore: must_be_immutable
class NotificationItemWidget extends StatelessWidget {
  NotificationItemWidget({this.onTapImgTrash});

  VoidCallback? onTapImgTrash;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: getPadding(
          left: 8,
          top: 7,
          right: 8,
          bottom: 7,
        ),
        decoration: AppDecoration.outlineBluegray30026.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgCircle38x39,
              height: getVerticalSize(
                38,
              ),
              width: getHorizontalSize(
                39,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  19,
                ),
              ),
              margin: getMargin(
                top: 8,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 10,
                top: 6,
                bottom: 4,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoMedium13,
                      ),
                      Container(
                        height: getSize(
                          5,
                        ),
                        width: getSize(
                          5,
                        ),
                        margin: getMargin(
                          left: 5,
                          top: 5,
                          bottom: 5,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.amberA7007a,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              2,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 5,
                          top: 1,
                        ),
                        child: Text(
                          "",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoMedium12Bluegray300,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: getPadding(
                      top: 2,
                    ),
                    child: Text(
                      "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoMedium13Bluegray300,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            CustomImageView(
              svgPath: ImageConstant.imgTrash,
              height: getSize(
                28,
              ),
              width: getSize(
                28,
              ),
              margin: getMargin(
                top: 15,
                right: 8,
                bottom: 3,
              ),
              onTap: () {
                onTapImgTrash?.call();
              },
            ),
          ],
        ),
      ),
    );
  }
}
