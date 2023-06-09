import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:socialapp/widgets/app_bar/custom_app_bar.dart';
import 'package:socialapp/widgets/custom_icon_button.dart';

class ReelsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  height: getVerticalSize(800),
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                padding: getPadding(
                                                    left: 7,
                                                    top: 76,
                                                    right: 7,
                                                    bottom: 76),
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            ImageConstant
                                                                .imgGroup97),
                                                        fit: BoxFit.cover)),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 272,
                                                              right: 9),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      onTapSurface(
                                                                          context);
                                                                    },
                                                                    child: Container(
                                                                        height: getVerticalSize(
                                                                            163),
                                                                        width: getHorizontalSize(
                                                                            26),
                                                                        margin: getMargin(
                                                                            bottom:
                                                                                117),
                                                                        decoration: BoxDecoration(
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                                13)),
                                                                            gradient:
                                                                                LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [
                                                                              ColorConstant.orange600Cc,
                                                                              ColorConstant.orange500Cc
                                                                            ])))),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                83),
                                                                    child: Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgLogo1,
                                                                              height: getVerticalSize(37),
                                                                              width: getHorizontalSize(33)),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgClock,
                                                                              height: getVerticalSize(40),
                                                                              width: getHorizontalSize(37),
                                                                              margin: getMargin(top: 24)),
                                                                          Padding(
                                                                              padding: getPadding(top: 3),
                                                                              child: Text("143", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterBold10)),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgMusicWhiteA700,
                                                                              height: getSize(40),
                                                                              width: getSize(40),
                                                                              margin: getMargin(top: 23)),
                                                                          Padding(
                                                                              padding: getPadding(top: 3),
                                                                              child: Text("2132", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterBold10Orange50002))
                                                                        ]))
                                                              ])),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  58),
                                                          width:
                                                              getHorizontalSize(
                                                                  48),
                                                          margin: getMargin(
                                                              top: 37,
                                                              right: 4),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgImage348x48,
                                                                    height:
                                                                        getSize(
                                                                            48),
                                                                    width:
                                                                        getSize(
                                                                            48),
                                                                    radius: BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            24)),
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter),
                                                                CustomIconButton(
                                                                    height: 20,
                                                                    width: 20,
                                                                    variant:
                                                                        IconButtonVariant
                                                                            .FillOrangeA70001,
                                                                    shape: IconButtonShape
                                                                        .CircleBorder10,
                                                                    padding:
                                                                        IconButtonPadding
                                                                            .PaddingAll8,
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    child: CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgPlus))
                                                              ]))
                                                    ]))),
                                        CustomAppBar(
                                            height: getVerticalSize(72),
                                            title: Padding(
                                                padding: getPadding(left: 1),
                                                child: Row(children: [
                                                  Container(
                                                      width:
                                                          getHorizontalSize(94),
                                                      padding: getPadding(
                                                          left: 25,
                                                          top: 9,
                                                          right: 25,
                                                          bottom: 9),
                                                      decoration: AppDecoration
                                                          .txtFillOrange50002
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .txtRoundedBorder17),
                                                      child: Text("For You",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterBold12)),
                                                  AppbarSubtitle3(
                                                      text: "Travel",
                                                      margin:
                                                          getMargin(left: 12))
                                                ])),
                                            actions: [
                                              AppbarSubtitle3(text: "Music"),
                                              AppbarSubtitle3(
                                                  text: "Desk Setup",
                                                  margin: getMargin(left: 12))
                                            ]),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                width: double.maxFinite,
                                                margin: getMargin(top: 722),
                                                padding: getPadding(
                                                    left: 14,
                                                    top: 8,
                                                    right: 14,
                                                    bottom: 8),
                                                decoration:
                                                    AppDecoration.fillBlack900,
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      CustomIconButton(
                                                          height: 37,
                                                          width: 38,
                                                          margin: getMargin(
                                                              left: 5,
                                                              top: 3,
                                                              bottom: 26),
                                                          variant:
                                                              IconButtonVariant
                                                                  .FillBlack900,
                                                          onTap: () {
                                                            onTapBtnHome(
                                                                context);
                                                          },
                                                          child: CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgHomeOrange7000237x38)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 26,
                                                              top: 3,
                                                              bottom: 16),
                                                          child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgIdeatelinesearch,
                                                                    height:
                                                                        getSize(
                                                                            32),
                                                                    width:
                                                                        getSize(
                                                                            32)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                1),
                                                                    child: Text(
                                                                        "Search",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtInterMedium10))
                                                              ])),
                                                      Spacer(),
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapColumnglobe(
                                                                context);
                                                          },
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 2,
                                                                      bottom:
                                                                          7),
                                                              child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                        height: getSize(
                                                                            35),
                                                                        width: getSize(
                                                                            35),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.topRight,
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgGlobe, height: getSize(30), width: getSize(30), alignment: Alignment.bottomLeft),
                                                                              Align(alignment: Alignment.topRight, child: Container(width: getHorizontalSize(22), padding: getPadding(left: 4, top: 1, right: 4, bottom: 1), decoration: AppDecoration.txtFillRedA700.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder7), child: Text("14", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanRegular12WhiteA700)))
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                2,
                                                                            top:
                                                                                9),
                                                                        child: Text(
                                                                            "Chats",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRobotoRomanRegular10WhiteA700))
                                                                  ]))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 30,
                                                              bottom: 19),
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgUserOrange7000232x32,
                                                                    height:
                                                                        getSize(
                                                                            32),
                                                                    width:
                                                                        getSize(
                                                                            32),
                                                                    alignment:
                                                                        Alignment
                                                                            .center),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                1),
                                                                    child: Text(
                                                                        "Profile",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtInterMedium10))
                                                              ]))
                                                    ]))),
                                        CustomIconButton(
                                            height: 60,
                                            width: 60,
                                            margin: getMargin(bottom: 47),
                                            variant: IconButtonVariant
                                                .GradientAmberA70001DeeporangeA40001,
                                            shape:
                                                IconButtonShape.CircleBorder30,
                                            padding:
                                                IconButtonPadding.PaddingAll11,
                                            alignment: Alignment.bottomCenter,
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgLogo1))
                                      ]))))
                    ]))));
  }

  onTapSurface(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenOneScreen);
  }

  onTapBtnHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenOneScreen);
  }

  onTapColumnglobe(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.messageScreen);
  }
}
