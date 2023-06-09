import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/app_bar/appbar_circleimage_1.dart';
import 'package:socialapp/widgets/app_bar/appbar_image.dart';
import 'package:socialapp/widgets/app_bar/appbar_image_1.dart';
import 'package:socialapp/widgets/app_bar/custom_app_bar.dart';
import 'package:socialapp/widgets/custom_text_form_field.dart';

class StatusScreenScreenTwoScreen extends StatelessWidget {
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: ColorConstant.black90007,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56,
          ),
          leadingWidth: 64,
          leading: Container(
            height: getVerticalSize(
              23,
            ),
            width: getHorizontalSize(
              24,
            ),
            margin: getMargin(
              left: 40,
              top: 20,
              bottom: 13,
            ),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                AppbarImage(
                  height: getVerticalSize(
                    23,
                  ),
                  width: getHorizontalSize(
                    24,
                  ),
                  imagePath: ImageConstant.imgVector,
                ),
                AppbarCircleimage1(
                  imagePath: ImageConstant.imgCircle15x15,
                  margin: getMargin(
                    left: 7,
                    top: 4,
                    right: 2,
                    bottom: 4,
                  ),
                ),
              ],
            ),
          ),
          centerTitle: true,
          title: AppbarImage1(
            height: getVerticalSize(
              30,
            ),
            width: getHorizontalSize(
              26,
            ),
            imagePath: ImageConstant.imgPhoto30x26,
          ),
          actions: [
            AppbarImage1(
              height: getVerticalSize(
                30,
              ),
              width: getHorizontalSize(
                26,
              ),
              imagePath: ImageConstant.imgPhoto6,
              margin: getMargin(
                left: 33,
                top: 13,
                right: 33,
                bottom: 13,
              ),
            ),
          ],
        ),
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            color: ColorConstant.black90007,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup430,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 1,
              top: 6,
              right: 1,
              bottom: 6,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 7,
                    right: 1,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPhoto40x40,
                        height: getSize(
                          40,
                        ),
                        width: getSize(
                          40,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 15,
                          top: 10,
                          bottom: 11,
                        ),
                        child: Text(
                          "Yusuf mubarak",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoMedium15WhiteA700,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 7,
                          top: 13,
                          bottom: 11,
                        ),
                        child: Text(
                          "10 m",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular12WhiteA700,
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        svgPath: ImageConstant.imgMore,
                        height: getVerticalSize(
                          3,
                        ),
                        width: getHorizontalSize(
                          19,
                        ),
                        margin: getMargin(
                          top: 17,
                          bottom: 20,
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgCloseWhiteA700,
                        height: getSize(
                          30,
                        ),
                        width: getSize(
                          30,
                        ),
                        margin: getMargin(
                          left: 11,
                          top: 5,
                          bottom: 5,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: getPadding(
                    bottom: 41,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: getVerticalSize(
                          163,
                        ),
                        width: getHorizontalSize(
                          26,
                        ),
                        margin: getMargin(
                          bottom: 156,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              13,
                            ),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment(
                              0.5,
                              0,
                            ),
                            end: Alignment(
                              0.5,
                              1,
                            ),
                            colors: [
                              ColorConstant.orange600Cc,
                              ColorConstant.orange500Cc,
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: getPadding(
                          top: 263,
                          bottom: 29,
                        ),
                        child: Text(
                          "NAF panthers😍",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium18,
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 49,
                          top: 69,
                        ),
                        padding: getPadding(
                          left: 10,
                          top: 9,
                          right: 10,
                          bottom: 9,
                        ),
                        decoration: AppDecoration.fillBluegray9007f.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder28,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img,
                              height: getVerticalSize(
                                33,
                              ),
                              width: getHorizontalSize(
                                28,
                              ),
                              alignment: Alignment.centerRight,
                              margin: getMargin(
                                top: 1,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.img33x28,
                              height: getVerticalSize(
                                33,
                              ),
                              width: getHorizontalSize(
                                28,
                              ),
                              alignment: Alignment.center,
                              margin: getMargin(
                                top: 15,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.img36x30,
                              height: getVerticalSize(
                                36,
                              ),
                              width: getHorizontalSize(
                                30,
                              ),
                              alignment: Alignment.center,
                              margin: getMargin(
                                top: 15,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.img1,
                              height: getVerticalSize(
                                36,
                              ),
                              width: getHorizontalSize(
                                30,
                              ),
                              margin: getMargin(
                                top: 14,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.img2,
                              height: getVerticalSize(
                                33,
                              ),
                              width: getHorizontalSize(
                                28,
                              ),
                              margin: getMargin(
                                top: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomTextFormField(
          focusNode: FocusNode(),
          autofocus: true,
          controller: messageController,
          hintText: "Send a message",
          margin: getMargin(
            left: 15,
            right: 5,
            bottom: 39,
          ),
          variant: TextFormFieldVariant.FillBluegray9007f,
          shape: TextFormFieldShape.RoundedBorder20,
          padding: TextFormFieldPadding.PaddingT13,
          fontStyle: TextFormFieldFontStyle.RobotoRegular15,
          textInputAction: TextInputAction.done,
          suffix: Container(
            margin: getMargin(
              left: 30,
              top: 10,
              right: 17,
              bottom: 10,
            ),
            child: CustomImageView(
              svgPath: ImageConstant.imgSend,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: getVerticalSize(
              44,
            ),
          ),
        ),
      ),
    );
  }
}
