import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/custom_button.dart';

class VerificationCodeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  height: size.height,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgEzgif2,
                                            height: getVerticalSize(144),
                                            width: getHorizontalSize(212),
                                            alignment: Alignment.bottomLeft),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEzgif2212x360,
                                            height: getVerticalSize(212),
                                            width: getHorizontalSize(360),
                                            alignment: Alignment.topCenter),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgEzgif3,
                                            height: getVerticalSize(130),
                                            width: getHorizontalSize(212),
                                            alignment: Alignment.topRight),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                decoration:
                                                    AppDecoration.fillBlack900,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                          width:
                                                              double.maxFinite,
                                                          padding: getPadding(
                                                              left: 25,
                                                              top: 23,
                                                              right: 25,
                                                              bottom: 23),
                                                          decoration:
                                                              AppDecoration
                                                                  .fillBlack90063,
                                                          child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Card(
                                                                    clipBehavior:
                                                                        Clip
                                                                            .antiAlias,
                                                                    elevation:
                                                                        0,
                                                                    margin: getMargin(
                                                                        bottom:
                                                                            172),
                                                                    shape: RoundedRectangleBorder(
                                                                        side: BorderSide(
                                                                            color: ColorConstant
                                                                                .orange70087,
                                                                            width: getHorizontalSize(
                                                                                1)),
                                                                        borderRadius:
                                                                            BorderRadiusStyle.circleBorder15),
                                                                    child: Container(
                                                                        height: getSize(30),
                                                                        width: getSize(30),
                                                                        padding: getPadding(all: 1),
                                                                        decoration: AppDecoration.outlineOrange70087.copyWith(borderRadius: BorderRadiusStyle.circleBorder15),
                                                                        child: Stack(children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgArrowleftOrange700,
                                                                              height: getSize(28),
                                                                              width: getSize(28),
                                                                              alignment: Alignment.center,
                                                                              onTap: () {
                                                                                onTapImgArrowleft(context);
                                                                              })
                                                                        ]))),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgLogo1,
                                                                    height:
                                                                        getVerticalSize(
                                                                            125),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            119),
                                                                    margin: getMargin(
                                                                        left:
                                                                            65,
                                                                        top: 29,
                                                                        bottom:
                                                                            48))
                                                              ]))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                padding: getPadding(
                                                    left: 8,
                                                    top: 21,
                                                    right: 8,
                                                    bottom: 21),
                                                decoration: AppDecoration
                                                    .fillWhiteA700
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL24),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("VERIFICATION",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtAbhayaLibreMedium16),
                                                      Container(
                                                          width: double
                                                              .maxFinite,
                                                          child: Container(
                                                              margin: getMargin(
                                                                  top: 29,
                                                                  right: 1),
                                                              padding:
                                                                  getPadding(
                                                                      left: 28,
                                                                      top: 15,
                                                                      right: 28,
                                                                      bottom:
                                                                          15),
                                                              decoration: AppDecoration
                                                                  .fillGray100
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder12),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                        width: getHorizontalSize(
                                                                            285),
                                                                        margin: getMargin(
                                                                            bottom:
                                                                                5),
                                                                        child: Text(
                                                                            "A message with verification code was sent to your mobile phone.",
                                                                            maxLines:
                                                                                null,
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            style: AppStyle.txtAbhayaLibreMedium18.copyWith(letterSpacing: getHorizontalSize(0.4))))
                                                                  ]))),
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  50),
                                                          text:
                                                              "Type verification code",
                                                          margin: getMargin(
                                                              left: 10,
                                                              top: 71,
                                                              right: 19),
                                                          variant: ButtonVariant
                                                              .FillGray10001,
                                                          fontStyle: ButtonFontStyle
                                                              .AbhayaLibreMedium16),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 66,
                                                                      top: 39),
                                                              child: Text(
                                                                  "Don't receive the code"
                                                                      .toUpperCase(),
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtAbhayaLibreMedium14
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              getHorizontalSize(2.0))))),
                                                      CustomButton(
                                                          text: "Verify",
                                                          margin: getMargin(
                                                              left: 24,
                                                              top: 21,
                                                              right: 5,
                                                              bottom: 155),
                                                          variant: ButtonVariant
                                                              .GradientDeeporange300Yellow900,
                                                          fontStyle: ButtonFontStyle
                                                              .AbrilFatfaceRegular20,
                                                          onTap: () {
                                                            onTapVerify(
                                                                context);
                                                          },
                                                          alignment: Alignment
                                                              .centerRight)
                                                    ])))
                                      ]))))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapVerify(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.whoAreYouScreen);
  }
}
