import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';

// ignore: must_be_immutable
class ShoppingItemWidget extends StatelessWidget {
  ShoppingItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: getPadding(
            top: 9,
            bottom: 8,
          ),
          child: Text(
            "",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtAbhayaLibreMedium15Gray90005,
          ),
        ),
        Container(
          height: getVerticalSize(
            36,
          ),
          width: getHorizontalSize(
            99,
          ),
          margin: getMargin(
            left: 21,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 34,
                  ),
                  child: Text(
                    "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtAbhayaLibreMedium13Gray90005,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: ColorConstant.blueGray50,
                      width: getHorizontalSize(
                        1,
                      ),
                    ),
                    borderRadius: BorderRadiusStyle.roundedBorder2,
                  ),
                  child: Container(
                    height: getVerticalSize(
                      36,
                    ),
                    width: getHorizontalSize(
                      99,
                    ),
                    padding: getPadding(
                      left: 14,
                      top: 16,
                      right: 14,
                      bottom: 16,
                    ),
                    decoration: AppDecoration.outlineBluegray50.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder2,
                    ),
                    child: Stack(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgVectorBlue600,
                          height: getVerticalSize(
                            4,
                          ),
                          width: getHorizontalSize(
                            8,
                          ),
                          alignment: Alignment.centerRight,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
