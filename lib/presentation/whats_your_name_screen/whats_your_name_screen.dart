import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/app_bar/appbar_image.dart';
import 'package:socialapp/widgets/app_bar/custom_app_bar.dart';
import 'package:socialapp/widgets/custom_button.dart';

class WhatsYourNameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            appBar: CustomAppBar(
                height: getVerticalSize(134),
                leadingWidth: 45,
                leading: Container(
                    margin: getMargin(left: 15, top: 5, bottom: 57),
                    padding: getPadding(all: 1),
                    decoration: AppDecoration.outlineOrange70087.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder15),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppbarImage(
                              height: getSize(28),
                              width: getSize(28),
                              svgPath: ImageConstant.imgArrowleftOrange700,
                              onTap: () {
                                onTapArrowleft(context);
                              })
                        ])),
                centerTitle: true,
                title: AppbarImage(
                    height: getVerticalSize(92),
                    width: getHorizontalSize(89),
                    imagePath: ImageConstant.imgLogo1)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 17, bottom: 17),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("What’s your name?",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAbhayaLibreMedium25),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 35, top: 87),
                              child: Text("FIRST NAME",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtAbhayaLibreMedium15))),
                      CustomImageView(
                          svgPath: ImageConstant.imgLine,
                          height: getVerticalSize(5),
                          width: getHorizontalSize(287),
                          margin: getMargin(top: 37)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 36, top: 60),
                              child: Text("LAST NAME",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtAbhayaLibreMedium15))),
                      CustomImageView(
                          svgPath: ImageConstant.imgLineOrange60001,
                          height: getVerticalSize(5),
                          width: getHorizontalSize(287),
                          margin: getMargin(top: 37)),
                      Container(
                          width: getHorizontalSize(272),
                          margin: getMargin(left: 39, top: 31, right: 48),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        "By tapping Sign Up & Accept, you acknowledge that\nyou have read the ",
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(13),
                                        fontFamily: 'Abhaya Libre Medium',
                                        fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text: "Privacy Policy",
                                    style: TextStyle(
                                        color: ColorConstant.orange50002,
                                        fontSize: getFontSize(13),
                                        fontFamily: 'Abhaya Libre Medium',
                                        fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text: " and agree to the \n",
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(13),
                                        fontFamily: 'Abhaya Libre Medium',
                                        fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text: "Terms of Service.",
                                    style: TextStyle(
                                        color: ColorConstant.orange50002,
                                        fontSize: getFontSize(13),
                                        fontFamily: 'Abhaya Libre Medium',
                                        fontWeight: FontWeight.w500))
                              ]),
                              textAlign: TextAlign.left)),
                      GestureDetector(
                          onTap: () {
                            onTapColumncontinue(context);
                          },
                          child: Padding(
                              padding: getPadding(top: 41, bottom: 5),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            padding: getPadding(
                                                left: 21,
                                                top: 10,
                                                right: 21,
                                                bottom: 10),
                                            decoration:
                                                AppDecoration.fillBlack900,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomButton(
                                                      text: "Continue",
                                                      variant: ButtonVariant
                                                          .GradientAmber600Orange70002,
                                                      shape: ButtonShape
                                                          .RoundedBorder30,
                                                      fontStyle: ButtonFontStyle
                                                          .AbrilFatfaceRegular24)
                                                ]))),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgBottomindicator,
                                        height: getVerticalSize(34),
                                        width: getHorizontalSize(360))
                                  ])))
                    ]))));
  }

  onTapColumncontinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dateOfBirthScreen);
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
