import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/custom_button.dart';

class EcomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray40003,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              padding: getPadding(top: 38),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: getVerticalSize(344),
                                        width: double.maxFinite,
                                        child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .img391fe00d550d08e,
                                                  height: getVerticalSize(344),
                                                  width: getHorizontalSize(360),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        onTapSurface(context);
                                                      },
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  163),
                                                          width:
                                                              getHorizontalSize(
                                                                  26),
                                                          margin: getMargin(
                                                              left: 1,
                                                              bottom: 9),
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          13)),
                                                              gradient: LinearGradient(
                                                                  begin:
                                                                      Alignment(
                                                                          0.5,
                                                                          0),
                                                                  end:
                                                                      Alignment(
                                                                          0.5,
                                                                          1),
                                                                  colors: [
                                                                    ColorConstant
                                                                        .black900,
                                                                    ColorConstant
                                                                        .black90019
                                                                  ])))))
                                            ])),
                                    Container(
                                        height: getVerticalSize(364),
                                        width: double.maxFinite,
                                        margin: getMargin(top: 13),
                                        child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      padding: getPadding(
                                                          left: 62,
                                                          top: 50,
                                                          right: 62,
                                                          bottom: 50),
                                                      decoration: AppDecoration
                                                          .fillBlack900
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder28),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        222),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            13,
                                                                        bottom:
                                                                            135),
                                                                child: Text(
                                                                    "   Buy  from your \n       favourite\n      CREATOR",
                                                                    maxLines:
                                                                        null,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtAbhayaLibreMedium36))
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        onTapColumnshop(
                                                            context);
                                                      },
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                width: double
                                                                    .maxFinite,
                                                                child:
                                                                    Container(
                                                                        padding: getPadding(
                                                                            left:
                                                                                22,
                                                                            top:
                                                                                10,
                                                                            right:
                                                                                22,
                                                                            bottom:
                                                                                10),
                                                                        decoration:
                                                                            AppDecoration
                                                                                .fillBlack900,
                                                                        child: Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              CustomButton(height: getVerticalSize(64), text: "SHOP", variant: ButtonVariant.FillAmberA400, shape: ButtonShape.RoundedBorder30, fontStyle: ButtonFontStyle.AbrilFatfaceRegular24Black900)
                                                                            ]))),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgBottomindicator2,
                                                                height:
                                                                    getVerticalSize(
                                                                        34),
                                                                width:
                                                                    getHorizontalSize(
                                                                        360))
                                                          ])))
                                            ]))
                                  ])))
                    ]))));
  }

  onTapSurface(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenOneScreen);
  }

  onTapColumnshop(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenOneScreen);
  }
}
