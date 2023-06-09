import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/custom_button.dart';

class UploadPicturesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 11, bottom: 11),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 24),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: getMargin(bottom: 124),
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: ColorConstant.orange70087,
                                            width: getHorizontalSize(1)),
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder15),
                                    child: Container(
                                        height: getSize(30),
                                        width: getSize(30),
                                        padding: getPadding(all: 1),
                                        decoration: AppDecoration
                                            .outlineOrange70087
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder15),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowleftOrange700,
                                              height: getSize(28),
                                              width: getSize(28),
                                              alignment: Alignment.center,
                                              onTap: () {
                                                onTapImgArrowleft(context);
                                              })
                                        ]))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgLogo1,
                                    height: getVerticalSize(125),
                                    width: getHorizontalSize(119),
                                    margin: getMargin(left: 67, top: 29))
                              ])),
                      Container(
                          width: getHorizontalSize(267),
                          margin: getMargin(left: 37, top: 40, right: 55),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Upload your profile \n            ",
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(32),
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "picture",
                                    style: TextStyle(
                                        color: ColorConstant.orange50002,
                                        fontSize: getFontSize(32),
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400))
                              ]),
                              textAlign: TextAlign.left)),
                      Align(
                          alignment: Alignment.center,
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: getMargin(top: 1),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: ColorConstant.amberA70001,
                                      width: getHorizontalSize(5)),
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder52),
                              child: Container(
                                  height: getSize(105),
                                  width: getSize(105),
                                  padding: getPadding(
                                      left: 25, top: 20, right: 25, bottom: 20),
                                  decoration: AppDecoration.outlineAmberA70001
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder52),
                                  child: Stack(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCamera,
                                        height: getVerticalSize(64),
                                        width: getHorizontalSize(54),
                                        alignment: Alignment.center)
                                  ])))),
                      Spacer(),
                      GestureDetector(
                          onTap: () {
                            onTapColumnupload(context);
                          },
                          child: Padding(
                              padding: getPadding(left: 2, bottom: 113),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            width: getHorizontalSize(358),
                                            padding: getPadding(
                                                left: 13,
                                                top: 10,
                                                right: 13,
                                                bottom: 10),
                                            decoration:
                                                AppDecoration.fillBlack900,
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomButton(
                                                      text: "UPLOAD",
                                                      margin:
                                                          getMargin(left: 17),
                                                      variant: ButtonVariant
                                                          .GradientAmber600Orange70002,
                                                      shape: ButtonShape
                                                          .RoundedBorder30,
                                                      fontStyle: ButtonFontStyle
                                                          .AbrilFatfaceRegular24)
                                                ]))),
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgBottomindicator34x358,
                                        height: getVerticalSize(34),
                                        width: getHorizontalSize(358))
                                  ])))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapColumnupload(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenOneScreen);
  }
}
