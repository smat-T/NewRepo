import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/custom_button.dart';

class WeAreAllDoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 10, top: 58, right: 10, bottom: 58),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(top: 1, right: 39),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(bottom: 32),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color:
                                                    ColorConstant.orange70087,
                                                width: getHorizontalSize(1)),
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder15),
                                        child: Container(
                                            height: getSize(30),
                                            width: getSize(30),
                                            padding: getPadding(all: 1),
                                            decoration: AppDecoration
                                                .outlineOrange70087
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
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
                                    Padding(
                                        padding: getPadding(left: 9, top: 24),
                                        child: Text("WE ARE ALL DONE",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: AppStyle
                                                .txtAbhayaLibreMedium32
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.6))))
                                  ]))),
                      CustomImageView(
                          imagePath: ImageConstant.imgLogo1,
                          height: getVerticalSize(283),
                          width: getHorizontalSize(267),
                          margin: getMargin(top: 67)),
                      Padding(
                          padding: getPadding(top: 46),
                          child: Text("WELCOME",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtAbhayaLibreMedium32.copyWith(
                                  letterSpacing: getHorizontalSize(0.6))))
                    ])),
            bottomNavigationBar: GestureDetector(
                onTap: () {
                  onTapColumncreate(context);
                },
                child: Padding(
                    padding: getPadding(bottom: 32),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              margin: getMargin(left: 23, right: 22),
                              decoration: AppDecoration.fillBlack900,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomButton(
                                        text: "Create your profile",
                                        variant: ButtonVariant
                                            .GradientOrange70002DeeporangeA400,
                                        shape: ButtonShape.RoundedBorder30,
                                        fontStyle: ButtonFontStyle
                                            .AbrilFatfaceRegular24)
                                  ])),
                          CustomImageView(
                              imagePath: ImageConstant.imgBottomindicator1,
                              height: getVerticalSize(34),
                              width: getHorizontalSize(360),
                              margin: getMargin(top: 10))
                        ])))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapColumncreate(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.whatsYourNameScreen);
  }
}
