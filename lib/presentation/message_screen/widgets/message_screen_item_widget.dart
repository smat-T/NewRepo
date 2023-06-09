import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';

// ignore: must_be_immutable
class MessageScreenItemWidget extends StatelessWidget {
  MessageScreenItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: getSize(
            50,
          ),
          width: getSize(
            50,
          ),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPhoto50x50,
                height: getSize(
                  50,
                ),
                width: getSize(
                  50,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    25,
                  ),
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: getSize(
                    10,
                  ),
                  width: getSize(
                    10,
                  ),
                  margin: getMargin(
                    top: 4,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.green600,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        5,
                      ),
                    ),
                    border: Border.all(
                      color: ColorConstant.whiteA700,
                      width: getHorizontalSize(
                        2,
                      ),
                      strokeAlign: strokeAlignOutside,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: getPadding(
            left: 14,
            top: 6,
            bottom: 3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoMedium15WhiteA700,
                  ),
                  Padding(
                    padding: getPadding(
                      left: 42,
                      top: 2,
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
                  top: 6,
                ),
                child: Text(
                  "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoMedium13Blue400,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Container(
          width: getSize(
            22,
          ),
          margin: getMargin(
            top: 14,
            bottom: 14,
          ),
          padding: getPadding(
            left: 7,
            top: 3,
            right: 7,
            bottom: 3,
          ),
          decoration: AppDecoration.txtFillDeeporangeA40002.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder11,
          ),
          child: Text(
            "2",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtRobotoBold12,
          ),
        ),
      ],
    );
  }
}
