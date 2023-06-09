import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/app_bar/appbar_image.dart';
import 'package:socialapp/widgets/app_bar/custom_app_bar.dart';
import 'package:socialapp/widgets/custom_icon_button.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            appBar: CustomAppBar(
                height: getVerticalSize(58),
                leadingWidth: 45,
                leading: Container(
                    margin: getMargin(left: 15, top: 11, bottom: 15),
                    padding: getPadding(all: 1),
                    decoration: AppDecoration.outlineAmberA70087.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder15),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppbarImage(
                              height: getSize(28),
                              width: getSize(28),
                              svgPath: ImageConstant.imgIconsback)
                        ])),
                title: Padding(
                    padding: getPadding(left: 15),
                    child: Row(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse3,
                          height: getSize(36),
                          width: getSize(36),
                          radius: BorderRadius.circular(getHorizontalSize(18))),
                      Padding(
                          padding: getPadding(left: 19, top: 5, bottom: 10),
                          child: Text("yusuf mubarak",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanBold17.copyWith(
                                  letterSpacing: getHorizontalSize(0.5))))
                    ])),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgCall,
                      margin: getMargin(left: 12, top: 17, right: 15)),
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgVideo,
                      margin: getMargin(left: 27, top: 17, right: 50))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 4, top: 36, right: 4, bottom: 36),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(32),
                          width: getHorizontalSize(241),
                          margin: getMargin(right: 14),
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgUnion,
                                height: getVerticalSize(32),
                                width: getHorizontalSize(241),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 7),
                                    child: Text("Ope what songs are hot now?",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanRegular15
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.5)))))
                          ])),
                      Padding(
                          padding: getPadding(right: 14),
                          child: Text("12:28",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanLight10)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: getVerticalSize(97),
                              width: getHorizontalSize(319),
                              margin: getMargin(left: 10, top: 1),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                        padding:
                                            getPadding(left: 5, bottom: 22),
                                        child: Text("12:32",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanLight10))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        padding: getPadding(
                                            left: 16,
                                            top: 11,
                                            right: 16,
                                            bottom: 11),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: fs.Svg(
                                                    ImageConstant.imgGroup2),
                                                fit: BoxFit.cover)),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: getHorizontalSize(285),
                                                  margin: getMargin(bottom: 9),
                                                  child: Text(
                                                      "I’d rather listen to Lyrics mm, watch football, watch a movie, play football, or listen to  podcasts... ",
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular15Black900
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.5))))
                                            ])))
                              ]))),
                      Container(
                          height: getVerticalSize(292),
                          width: getHorizontalSize(345),
                          margin: getMargin(top: 9, right: 3),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                    padding: getPadding(top: 8, right: 11),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getVerticalSize(48),
                                              width: getHorizontalSize(232),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgUnion,
                                                        height:
                                                            getVerticalSize(48),
                                                        width:
                                                            getHorizontalSize(
                                                                232),
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 14),
                                                            child: Text(
                                                                "A new song is out bro.",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRomanRegular15WhiteA70004
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.5)))))
                                                  ])),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                  padding: getPadding(top: 7),
                                                  child: Text("12:38",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanLight10)))
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: getVerticalSize(292),
                                    width: getHorizontalSize(345),
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 11, right: 2),
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
                                                            width: double
                                                                .maxFinite,
                                                            child: Container(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            12,
                                                                        top: 6,
                                                                        right:
                                                                            12,
                                                                        bottom:
                                                                            6),
                                                                decoration: BoxDecoration(
                                                                    image: DecorationImage(
                                                                        image: fs.Svg(ImageConstant
                                                                            .imgGroup2),
                                                                        fit: BoxFit
                                                                            .cover)),
                                                                child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Container(
                                                                          margin: getMargin(
                                                                              right:
                                                                                  1),
                                                                          decoration: AppDecoration
                                                                              .fillBluegray10049
                                                                              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
                                                                          child: Row(children: [
                                                                            CustomImageView(
                                                                                imagePath: ImageConstant.imgSpotifyjpeg0,
                                                                                height: getVerticalSize(84),
                                                                                width: getHorizontalSize(100),
                                                                                radius: BorderRadius.only(topLeft: Radius.circular(getHorizontalSize(14)), bottomLeft: Radius.circular(getHorizontalSize(14)))),
                                                                            Padding(
                                                                                padding: getPadding(left: 5, top: 9, bottom: 6),
                                                                                child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                  Padding(padding: getPadding(left: 15), child: Text("Shop online  on ystorez", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanRegular12.copyWith(letterSpacing: getHorizontalSize(0.5)))),
                                                                                  Padding(padding: getPadding(top: 9), child: Text("shop and buy at the best prises today", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanRegular10.copyWith(letterSpacing: getHorizontalSize(0.5)))),
                                                                                  GestureDetector(
                                                                                      onTap: () {
                                                                                        onTapTxtWeburl(context);
                                                                                      },
                                                                                      child: Padding(padding: getPadding(top: 19), child: Text("www.spotify.com", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanLight10Black900.copyWith(letterSpacing: getHorizontalSize(0.5)))))
                                                                                ]))
                                                                          ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  90,
                                                                              top:
                                                                                  7,
                                                                              bottom:
                                                                                  4),
                                                                          child: Text(
                                                                              "ystorez.com",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRomanRegular15Indigo90001.copyWith(letterSpacing: getHorizontalSize(0.5))))
                                                                    ]))),
                                                        Text("12:40",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoRomanLight10)
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 13, bottom: 29),
                                                  child: Text("12:50",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanLight10))),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                  width: getHorizontalSize(332),
                                                  margin: getMargin(
                                                      left: 13, top: 212),
                                                  padding: getPadding(
                                                      left: 7,
                                                      top: 26,
                                                      right: 7,
                                                      bottom: 26),
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: fs.Svg(
                                                              ImageConstant
                                                                  .imgGroup2),
                                                          fit: BoxFit.cover)),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgLocationOrange70002,
                                                            height: getSize(28),
                                                            width: getSize(28),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        2))),
                                                        Container(
                                                            height: getSize(11),
                                                            width: getSize(11),
                                                            margin: getMargin(
                                                                left: 6,
                                                                top: 8,
                                                                bottom: 9),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .orange60001,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(5)))),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgSoundbazz,
                                                            height:
                                                                getVerticalSize(
                                                                    28),
                                                            width:
                                                                getHorizontalSize(
                                                                    225)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 14,
                                                                top: 8,
                                                                bottom: 7),
                                                            child: Text("02:40",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRomanRegular10
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.5))))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: GestureDetector(
                                                  onTap: () {
                                                    onTapSurface(context);
                                                  },
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          163),
                                                      width: getHorizontalSize(
                                                          26),
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      13)),
                                                          gradient:
                                                              LinearGradient(
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
                                                                    .orange600Cc,
                                                                ColorConstant
                                                                    .orange500Cc
                                                              ])))))
                                        ])))
                          ])),
                      Container(
                          width: getHorizontalSize(331),
                          margin: getMargin(left: 19, top: 11),
                          padding: getPadding(
                              left: 20, top: 6, right: 20, bottom: 6),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: fs.Svg(ImageConstant.imgUnion),
                                  fit: BoxFit.cover)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: getHorizontalSize(276),
                                    margin: getMargin(right: 15, bottom: 8),
                                    child: Text(
                                        "I knew  you’ll love it for sure, I’ve got to go study now ope I will hit you up later about the party..TTYL ✌ ",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanRegular15
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.5))))
                              ])),
                      Container(
                          margin:
                              getMargin(left: 5, top: 26, right: 5, bottom: 5),
                          padding: getPadding(left: 4, right: 4),
                          decoration: AppDecoration.fillBluegray30019.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder22),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomIconButton(
                                    height: 36,
                                    width: 36,
                                    margin: getMargin(top: 4, bottom: 4),
                                    variant: IconButtonVariant.FillAmberA200,
                                    child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgCameraBlack900)),
                                Padding(
                                    padding: getPadding(
                                        left: 9, top: 14, bottom: 11),
                                    child: Text("Message",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRegular15)),
                                Spacer(),
                                Container(
                                    height: getVerticalSize(33),
                                    width: getHorizontalSize(82),
                                    margin: getMargin(right: 5, bottom: 10),
                                    child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgSignal,
                                              height: getVerticalSize(24),
                                              width: getHorizontalSize(81),
                                              alignment:
                                                  Alignment.bottomCenter),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Text("12:50",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanLight10))
                                        ]))
                              ]))
                    ]))));
  }

  onTapTxtWeburl(BuildContext context) {
    // TODO: implement Actions
  }
  onTapSurface(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenOneScreen);
  }
}
