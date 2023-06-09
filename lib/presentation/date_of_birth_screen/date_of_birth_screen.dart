import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/app_bar/appbar_image.dart';
import 'package:socialapp/widgets/app_bar/custom_app_bar.dart';
import 'package:socialapp/widgets/custom_button.dart';

class DateOfBirthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            appBar: CustomAppBar(
                height: getVerticalSize(109),
                leadingWidth: 52,
                leading: Container(
                    margin: getMargin(left: 22, top: 7, bottom: 55),
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
                                onTapArrowleft1(context);
                              })
                        ])),
                centerTitle: true,
                title: AppbarImage(
                    height: getVerticalSize(92),
                    width: getHorizontalSize(89),
                    imagePath: ImageConstant.imgLogo1)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 28, bottom: 28),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("What’s your birthday?",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAbhayaLibreMedium25),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 36, top: 87),
                              child: Text("BIRTHDAY",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtAbhayaLibreMedium15))),
                      CustomImageView(
                          svgPath: ImageConstant.imgLineOrange50002,
                          height: getVerticalSize(5),
                          width: getHorizontalSize(287),
                          margin: getMargin(top: 37)),
                      Padding(
                          padding: getPadding(left: 67, top: 73, right: 55),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("Oct",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtAbhayaLibreMedium25Gray40002)),
                                Spacer(flex: 52),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("29",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtAbhayaLibreMedium25Gray40002)),
                                Spacer(flex: 47),
                                Text("2001",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtAbhayaLibreMedium25Gray40002)
                              ])),
                      CustomImageView(
                          svgPath: ImageConstant.imgLineOrange600,
                          height: getVerticalSize(1),
                          width: getHorizontalSize(275),
                          margin: getMargin(top: 11)),
                      Padding(
                          padding: getPadding(left: 66, top: 14, right: 54),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("Feb",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtAbhayaLibreSemiBold25)),
                                Spacer(flex: 52),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("11",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtAbhayaLibreMedium25)),
                                Spacer(flex: 47),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("2002",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtAbhayaLibreMedium25))
                              ])),
                      CustomImageView(
                          svgPath: ImageConstant.imgLineRedA700,
                          height: getVerticalSize(1),
                          width: getHorizontalSize(275),
                          margin: getMargin(top: 17)),
                      Padding(
                          padding: getPadding(left: 66, top: 9, right: 54),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("Dec",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtAbhayaLibreMedium25Gray40002)),
                                Spacer(flex: 51),
                                Text("01",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtAbhayaLibreMedium25Gray40002),
                                Spacer(flex: 48),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("2003",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtAbhayaLibreMedium25Gray40002))
                              ])),
                      GestureDetector(
                          onTap: () {
                            onTapColumnexplore(context);
                          },
                          child: Padding(
                              padding: getPadding(top: 58, bottom: 5),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            width: double.maxFinite,
                                            padding: getPadding(
                                                left: 18,
                                                top: 10,
                                                right: 18,
                                                bottom: 10),
                                            decoration:
                                                AppDecoration.fillBlack900,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomButton(
                                                      text: "EXPLORE NOW",
                                                      margin:
                                                          getMargin(left: 9),
                                                      variant: ButtonVariant
                                                          .GradientOrangeA70001Orange50004,
                                                      shape: ButtonShape
                                                          .RoundedBorder30,
                                                      fontStyle: ButtonFontStyle
                                                          .AbrilFatfaceRegular20)
                                                ]))),
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgBottomindicator34x360,
                                        height: getVerticalSize(34),
                                        width: getHorizontalSize(360))
                                  ])))
                    ]))));
  }

  onTapColumnexplore(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.uploadPicturesScreen);
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
