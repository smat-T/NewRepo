import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/presentation/home_screen_page/home_screen_page.dart';
import 'package:socialapp/widgets/app_bar/appbar_image.dart';
import 'package:socialapp/widgets/app_bar/custom_app_bar.dart';
import 'package:socialapp/widgets/custom_bottom_bar.dart';
import 'package:socialapp/widgets/custom_button.dart';
import 'package:socialapp/widgets/custom_icon_button.dart';
import 'package:socialapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class HomeScreenOneScreen extends StatelessWidget {
  TextEditingController commentController = TextEditingController();

  TextEditingController commentoneController = TextEditingController();

  TextEditingController commenttwoController = TextEditingController();

  TextEditingController commentthreeController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(83),
                leadingWidth: 47,
                leading: AppbarImage(
                    height: getVerticalSize(37),
                    width: getHorizontalSize(33),
                    imagePath: ImageConstant.imgLogo1,
                    margin: getMargin(left: 14, top: 9, bottom: 9)),
                actions: [
                  Padding(
                      padding:
                          getPadding(left: 10, top: 12, right: 10, bottom: 11),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(children: [
                              Container(
                                  height: getVerticalSize(31),
                                  width: getHorizontalSize(43),
                                  margin: getMargin(top: 1),
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        AppbarImage(
                                            height: getVerticalSize(31),
                                            width: getHorizontalSize(28),
                                            svgPath: ImageConstant.imgVolume,
                                            margin: getMargin(right: 15),
                                            onTap: () {
                                              onTapVolume(context);
                                            }),
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                                height: getVerticalSize(8),
                                                width: getHorizontalSize(18),
                                                margin: getMargin(
                                                    left: 25,
                                                    top: 11,
                                                    bottom: 12),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .orangeA70002,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                4))))),
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 27,
                                                    top: 9,
                                                    right: 4,
                                                    bottom: 10),
                                                child: Text("20",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterBold9)))
                                      ])),
                              AppbarImage(
                                  height: getSize(28),
                                  width: getSize(28),
                                  svgPath: ImageConstant.imgTrash,
                                  margin: getMargin(left: 6, bottom: 4),
                                  onTap: () {
                                    onTapTrash1(context);
                                  }),
                              Padding(
                                  padding:
                                      getPadding(left: 21, top: 3, bottom: 2),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getVerticalSize(18),
                                            width: getHorizontalSize(21),
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  AppbarImage(
                                                      height:
                                                          getVerticalSize(17),
                                                      width:
                                                          getHorizontalSize(21),
                                                      svgPath: ImageConstant
                                                          .imgNotification,
                                                      margin:
                                                          getMargin(top: 1)),
                                                  AppbarImage(
                                                      height:
                                                          getVerticalSize(17),
                                                      width:
                                                          getHorizontalSize(18),
                                                      svgPath: ImageConstant
                                                          .imgNotificationGray50,
                                                      margin: getMargin(
                                                          left: 2, bottom: 1),
                                                      onTap: () {
                                                        onTapNotification1(
                                                            context);
                                                      })
                                                ])),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                height: getVerticalSize(5),
                                                width: getHorizontalSize(6),
                                                margin: getMargin(
                                                    left: 8, top: 4, right: 6),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .orange50003,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                3)))))
                                      ]))
                            ])
                          ]))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 21),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: getPadding(left: 5),
                              child: IntrinsicWidth(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                    Container(
                                        height: getSize(60),
                                        width: getSize(60),
                                        margin: getMargin(bottom: 16),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgReplacephotohere60x60,
                                                  height: getSize(60),
                                                  width: getSize(60),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(30)),
                                                  alignment: Alignment.center),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgGroup47393,
                                                  height: getVerticalSize(30),
                                                  width: getHorizontalSize(34),
                                                  alignment: Alignment.center)
                                            ])),
                                    Expanded(
                                        child: Padding(
                                            padding:
                                                getPadding(left: 18, top: 2),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(right: 75),
                                                      child: Row(children: [
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    53),
                                                            width:
                                                                getHorizontalSize(
                                                                    48),
                                                            margin: getMargin(
                                                                bottom: 2),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgVector,
                                                                      height:
                                                                          getVerticalSize(
                                                                              53),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              43),
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgCircle2,
                                                                      height:
                                                                          getVerticalSize(
                                                                              51),
                                                                      width: getHorizontalSize(
                                                                          48),
                                                                      radius: BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              25)),
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      onTap:
                                                                          () {
                                                                        onTapImgCircle(
                                                                            context);
                                                                      })
                                                                ])),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    53),
                                                            width:
                                                                getHorizontalSize(
                                                                    48),
                                                            margin: getMargin(
                                                                left: 6,
                                                                bottom: 2),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgVector,
                                                                      height:
                                                                          getVerticalSize(
                                                                              53),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              43),
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgCircle3,
                                                                      height:
                                                                          getVerticalSize(
                                                                              51),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              48),
                                                                      radius: BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              25)),
                                                                      alignment:
                                                                          Alignment
                                                                              .center)
                                                                ])),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    53),
                                                            width:
                                                                getHorizontalSize(
                                                                    48),
                                                            margin: getMargin(
                                                                left: 6,
                                                                bottom: 2),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgVector,
                                                                      height:
                                                                          getVerticalSize(
                                                                              53),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              43),
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgCircle4,
                                                                      height:
                                                                          getVerticalSize(
                                                                              51),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              48),
                                                                      radius: BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              25)),
                                                                      alignment:
                                                                          Alignment
                                                                              .center)
                                                                ])),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    53),
                                                            width:
                                                                getHorizontalSize(
                                                                    48),
                                                            margin: getMargin(
                                                                left: 6,
                                                                top: 1,
                                                                bottom: 1),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgVector,
                                                                      height:
                                                                          getVerticalSize(
                                                                              53),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              43),
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgCircle5,
                                                                      height:
                                                                          getVerticalSize(
                                                                              51),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              48),
                                                                      radius: BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              25)),
                                                                      alignment:
                                                                          Alignment
                                                                              .center)
                                                                ])),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    53),
                                                            width:
                                                                getHorizontalSize(
                                                                    48),
                                                            margin: getMargin(
                                                                left: 6,
                                                                top: 2),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgVector,
                                                                      height:
                                                                          getVerticalSize(
                                                                              53),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              43),
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgCircle6,
                                                                      height:
                                                                          getVerticalSize(
                                                                              51),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              48),
                                                                      radius: BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              25)),
                                                                      alignment:
                                                                          Alignment
                                                                              .center)
                                                                ])),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    53),
                                                            width:
                                                                getHorizontalSize(
                                                                    48),
                                                            margin: getMargin(
                                                                left: 6,
                                                                top: 2),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgVector,
                                                                      height:
                                                                          getVerticalSize(
                                                                              53),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              1),
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgCircle,
                                                                      height:
                                                                          getVerticalSize(
                                                                              51),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              48),
                                                                      radius: BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              25)),
                                                                      alignment:
                                                                          Alignment
                                                                              .center)
                                                                ])),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgCircle51x48,
                                                            height:
                                                                getVerticalSize(
                                                                    51),
                                                            width:
                                                                getHorizontalSize(
                                                                    48),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        25)),
                                                            margin: getMargin(
                                                                left: 6,
                                                                top: 2,
                                                                bottom: 2)),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgCircle1,
                                                            height:
                                                                getVerticalSize(
                                                                    51),
                                                            width:
                                                                getHorizontalSize(
                                                                    48),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        25)),
                                                            margin: getMargin(
                                                                left: 6,
                                                                top: 2,
                                                                bottom: 2))
                                                      ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 1, top: 2),
                                                      child: Row(children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 1),
                                                            child: Text("Emma",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoMedium12)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 16,
                                                                bottom: 2),
                                                            child: Text(
                                                                "Aishat",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoMedium12)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 20,
                                                                bottom: 2),
                                                            child: Text("Mark",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoMedium12)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 20,
                                                                top: 1),
                                                            child: Text("Azeez",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoMedium12)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 15,
                                                                top: 2),
                                                            child: Text(
                                                                "Marvell",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoMedium12Gray50)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 13,
                                                                top: 2,
                                                                bottom: 1),
                                                            child: Text(
                                                                "Sidikat",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .txtRobotoMedium12)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 13,
                                                                top: 1,
                                                                bottom: 1),
                                                            child: Text("Mudi",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .txtRobotoMedium12Gray90002))
                                                      ]))
                                                ])))
                                  ]))),
                          Container(
                              height: getVerticalSize(90),
                              width: getHorizontalSize(321),
                              margin: getMargin(top: 32),
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            margin: getMargin(right: 1),
                                            padding: getPadding(
                                                left: 8,
                                                top: 17,
                                                right: 8,
                                                bottom: 17),
                                            decoration: AppDecoration
                                                .fillGray5033
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder12),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgGroup21x22,
                                                      height:
                                                          getVerticalSize(21),
                                                      width:
                                                          getHorizontalSize(22),
                                                      margin:
                                                          getMargin(bottom: 34),
                                                      onTap: () {
                                                        onTapImgGroup(context);
                                                      })
                                                ]))),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgAvatarBlack90001,
                                        height: getVerticalSize(40),
                                        width: getHorizontalSize(39),
                                        alignment: Alignment.topLeft,
                                        margin: getMargin(left: 13, top: 4)),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin:
                                                getMargin(left: 71, bottom: 8),
                                            color: ColorConstant.redA7005b,
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    color: ColorConstant
                                                        .black90033,
                                                    width:
                                                        getHorizontalSize(1)),
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder12),
                                            child: Container(
                                                height: getVerticalSize(26),
                                                width: getHorizontalSize(24),
                                                padding: getPadding(
                                                    left: 5,
                                                    top: 3,
                                                    right: 5,
                                                    bottom: 3),
                                                decoration: AppDecoration
                                                    .outlineBlack90033
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder12),
                                                child: Stack(children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgLocation,
                                                      height:
                                                          getVerticalSize(17),
                                                      width:
                                                          getHorizontalSize(12),
                                                      alignment:
                                                          Alignment.bottomRight)
                                                ])))),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                            height: getVerticalSize(42),
                                            width: getHorizontalSize(19),
                                            margin: getMargin(left: 17, top: 5),
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage,
                                                      height:
                                                          getVerticalSize(38),
                                                      width:
                                                          getHorizontalSize(15),
                                                      alignment:
                                                          Alignment.topRight),
                                                  Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  36),
                                                          width:
                                                              getHorizontalSize(
                                                                  15),
                                                          margin:
                                                              getMargin(top: 2),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgGlossind,
                                                                    height:
                                                                        getVerticalSize(
                                                                            36),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            15),
                                                                    alignment:
                                                                        Alignment
                                                                            .center),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Container(
                                                                        height: getVerticalSize(36),
                                                                        width: getHorizontalSize(15),
                                                                        child: Stack(alignment: Alignment.topCenter, children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgDiffdir,
                                                                              height: getVerticalSize(36),
                                                                              width: getHorizontalSize(15),
                                                                              alignment: Alignment.center),
                                                                          Align(
                                                                              alignment: Alignment.topCenter,
                                                                              child: Container(
                                                                                  height: getVerticalSize(30),
                                                                                  width: getHorizontalSize(15),
                                                                                  child: Stack(alignment: Alignment.topCenter, children: [
                                                                                    CustomImageView(imagePath: ImageConstant.imgPants, height: getVerticalSize(13), width: getHorizontalSize(9), alignment: Alignment.bottomRight, margin: getMargin(right: 1)),
                                                                                    CustomImageView(imagePath: ImageConstant.imgHoodie, height: getVerticalSize(17), width: getHorizontalSize(15), alignment: Alignment.topCenter)
                                                                                  ])))
                                                                        ])))
                                                              ]))),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgShoe3,
                                                      height:
                                                          getVerticalSize(2),
                                                      width:
                                                          getHorizontalSize(11),
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      margin:
                                                          getMargin(bottom: 3)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgShoe2,
                                                      height:
                                                          getVerticalSize(3),
                                                      width:
                                                          getHorizontalSize(10),
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      margin:
                                                          getMargin(bottom: 4)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgShoe1,
                                                      height:
                                                          getVerticalSize(3),
                                                      width:
                                                          getHorizontalSize(10),
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      margin:
                                                          getMargin(bottom: 5)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgGlossdir,
                                                      height:
                                                          getVerticalSize(31),
                                                      width:
                                                          getHorizontalSize(15),
                                                      alignment:
                                                          Alignment.bottomLeft)
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding: getPadding(bottom: 37),
                                            child: SizedBox(
                                                width: getHorizontalSize(319),
                                                child: Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: ColorConstant
                                                        .whiteA70001)))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding: getPadding(top: 17),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "W",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .gray5002,
                                                          fontSize:
                                                              getFontSize(12),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w700)),
                                                  TextSpan(
                                                      text:
                                                          "hat’s on your mind Opeyemi?",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .gray5002,
                                                          fontSize:
                                                              getFontSize(12),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w700))
                                                ]),
                                                textAlign: TextAlign.left))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin:
                                                getMargin(left: 11, bottom: 8),
                                            color: ColorConstant.yellowA70033,
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    color: ColorConstant
                                                        .black90033,
                                                    width:
                                                        getHorizontalSize(1)),
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder12),
                                            child: Container(
                                                height: getVerticalSize(26),
                                                width: getHorizontalSize(24),
                                                padding: getPadding(
                                                    left: 3,
                                                    top: 4,
                                                    right: 3,
                                                    bottom: 4),
                                                decoration: AppDecoration
                                                    .outlineBlack900331
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder12),
                                                child: Stack(children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEmojismilingface,
                                                      height:
                                                          getVerticalSize(18),
                                                      width:
                                                          getHorizontalSize(17),
                                                      alignment:
                                                          Alignment.centerLeft)
                                                ])))),
                                    CustomButton(
                                        width: getHorizontalSize(84),
                                        text: "SHARE",
                                        margin: getMargin(right: 5, bottom: 5),
                                        variant: ButtonVariant
                                            .GradientYellowA700Orange50002,
                                        shape: ButtonShape.RoundedBorder10,
                                        padding: ButtonPadding.PaddingAll6,
                                        fontStyle:
                                            ButtonFontStyle.RobotoRomanMedium11,
                                        alignment: Alignment.bottomRight),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                            height: getVerticalSize(26),
                                            width: getHorizontalSize(24),
                                            margin:
                                                getMargin(left: 41, bottom: 8),
                                            decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.orange70033,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(13)),
                                                border: Border.all(
                                                    color: ColorConstant
                                                        .black90033,
                                                    width: getHorizontalSize(
                                                        1))))),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEzgif5,
                                        height: getVerticalSize(22),
                                        width: getHorizontalSize(38),
                                        alignment: Alignment.bottomLeft,
                                        margin: getMargin(left: 34, bottom: 10))
                                  ])),
                          Container(
                              height: getVerticalSize(514),
                              width: double.maxFinite,
                              margin: getMargin(top: 23),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(left: 12),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      height:
                                                          getVerticalSize(51),
                                                      width: getHorizontalSize(
                                                          348),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child:
                                                                    Container(
                                                                        margin: getMargin(
                                                                            bottom:
                                                                                6),
                                                                        padding: getPadding(
                                                                            left:
                                                                                1,
                                                                            top:
                                                                                4,
                                                                            right:
                                                                                1,
                                                                            bottom:
                                                                                4),
                                                                        decoration:
                                                                            AppDecoration
                                                                                .fillBlack900,
                                                                        child: Row(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Card(
                                                                                  clipBehavior: Clip.antiAlias,
                                                                                  elevation: 0,
                                                                                  margin: getMargin(top: 1),
                                                                                  shape: RoundedRectangleBorder(side: BorderSide(width: getHorizontalSize(1)), borderRadius: BorderRadiusStyle.circleBorder19),
                                                                                  child: Container(
                                                                                      height: getSize(36),
                                                                                      width: getSize(36),
                                                                                      padding: getPadding(all: 2),
                                                                                      decoration: AppDecoration.outline.copyWith(borderRadius: BorderRadiusStyle.circleBorder19),
                                                                                      child: Stack(children: [
                                                                                        CustomImageView(imagePath: ImageConstant.imgReplacephotohere30x30, height: getSize(30), width: getSize(30), radius: BorderRadius.circular(getHorizontalSize(15)), alignment: Alignment.center)
                                                                                      ]))),
                                                                              Padding(padding: getPadding(left: 8, top: 10, bottom: 8), child: Text("Opeyemi", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsBold12)),
                                                                              Spacer(),
                                                                              Container(
                                                                                  margin: getMargin(top: 1, right: 14, bottom: 10),
                                                                                  padding: getPadding(left: 10, top: 5, right: 10, bottom: 5),
                                                                                  decoration: AppDecoration.outlineBlack900332.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
                                                                                  child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                    Container(height: getVerticalSize(15), width: getHorizontalSize(3), margin: getMargin(bottom: 1), decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(7))))
                                                                                  ]))
                                                                            ]))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            37),
                                                                    child: Text(
                                                                        "Lagos ,NIGERIA",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsBold12)))
                                                          ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16, top: 13),
                                                      child: Text(
                                                          "I just got a new bike.........",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsBold12)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 8,
                                                          top: 7,
                                                          right: 30),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgRectangle30172x272,
                                                                height:
                                                                    getVerticalSize(
                                                                        172),
                                                                width:
                                                                    getHorizontalSize(
                                                                        272),
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            23)),
                                                                margin:
                                                                    getMargin(
                                                                        bottom:
                                                                            13)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 2,
                                                                        top:
                                                                            32),
                                                                child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgEmojismilingface,
                                                                          height: getVerticalSize(
                                                                              18),
                                                                          width: getHorizontalSize(
                                                                              17),
                                                                          margin:
                                                                              getMargin(right: 6)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgCart,
                                                                          height: getSize(
                                                                              19),
                                                                          width: getSize(
                                                                              19),
                                                                          margin: getMargin(
                                                                              top:
                                                                                  22,
                                                                              right:
                                                                                  5),
                                                                          onTap:
                                                                              () {
                                                                            onTapImgCart(context);
                                                                          }),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgIcons,
                                                                          height: getVerticalSize(
                                                                              16),
                                                                          width: getHorizontalSize(
                                                                              17),
                                                                          margin: getMargin(
                                                                              top: 29,
                                                                              right: 7)),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgEllipse7,
                                                                          height: getVerticalSize(
                                                                              38),
                                                                          width: getHorizontalSize(
                                                                              36),
                                                                          radius: BorderRadius.circular(getHorizontalSize(
                                                                              19)),
                                                                          margin: getMargin(
                                                                              top:
                                                                                  11),
                                                                          onTap:
                                                                              () {
                                                                            onTapImgEllipseseven(context);
                                                                          })
                                                                    ]))
                                                          ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 3, right: 65),
                                                      child: Row(children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 2,
                                                                bottom: 2),
                                                            child: Text("1k",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtAbhayaLibreMedium24WhiteA700)),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgEmojismilingface,
                                                            height:
                                                                getVerticalSize(
                                                                    18),
                                                            width:
                                                                getHorizontalSize(
                                                                    17),
                                                            margin: getMargin(
                                                                left: 5,
                                                                top: 10,
                                                                bottom: 6)),
                                                        Expanded(
                                                            child: Container(
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            5),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            10,
                                                                        top: 7,
                                                                        right:
                                                                            10,
                                                                        bottom:
                                                                            7),
                                                                decoration: AppDecoration
                                                                    .fillGray800
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder12),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  2),
                                                                          child: Text(
                                                                              "Comments...............",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtAbhayaLibreMedium14WhiteA700)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgGroup,
                                                                          height: getVerticalSize(
                                                                              11),
                                                                          width: getHorizontalSize(
                                                                              13),
                                                                          margin: getMargin(
                                                                              left: 91,
                                                                              top: 3,
                                                                              bottom: 4))
                                                                    ])))
                                                      ])),
                                                  Container(
                                                      height:
                                                          getVerticalSize(75),
                                                      width: getHorizontalSize(
                                                          348),
                                                      margin:
                                                          getMargin(top: 45),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child:
                                                                    Container(
                                                                        margin: getMargin(
                                                                            bottom:
                                                                                30),
                                                                        padding: getPadding(
                                                                            left:
                                                                                1,
                                                                            top:
                                                                                4,
                                                                            right:
                                                                                1,
                                                                            bottom:
                                                                                4),
                                                                        decoration:
                                                                            AppDecoration
                                                                                .fillBlack900,
                                                                        child: Row(
                                                                            children: [
                                                                              Card(
                                                                                  clipBehavior: Clip.antiAlias,
                                                                                  elevation: 0,
                                                                                  margin: getMargin(top: 1),
                                                                                  shape: RoundedRectangleBorder(side: BorderSide(width: getHorizontalSize(1)), borderRadius: BorderRadiusStyle.circleBorder19),
                                                                                  child: Container(
                                                                                      height: getSize(36),
                                                                                      width: getSize(36),
                                                                                      padding: getPadding(all: 2),
                                                                                      decoration: AppDecoration.outline.copyWith(borderRadius: BorderRadiusStyle.circleBorder19),
                                                                                      child: Stack(children: [
                                                                                        CustomImageView(imagePath: ImageConstant.imgReplacephotohere, height: getSize(30), width: getSize(30), radius: BorderRadius.circular(getHorizontalSize(15)), alignment: Alignment.center)
                                                                                      ]))),
                                                                              Padding(padding: getPadding(left: 8, top: 9, bottom: 9), child: Text("Real news", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsBold12))
                                                                            ]))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            37,
                                                                        bottom:
                                                                            24),
                                                                    child: Text(
                                                                        "Lagos ,NIGERIA",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsBold12))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child: Text(
                                                                    "Nollywood movie s movies are still way behind.......",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsBold12)),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                child: Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            17),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            47),
                                                                    margin: getMargin(
                                                                        left: 1,
                                                                        bottom:
                                                                            8),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.blueGray10001)))
                                                          ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 8,
                                                          top: 14,
                                                          right: 28),
                                                      child: Row(children: [
                                                        Expanded(
                                                            child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgRectangle31,
                                                                  height:
                                                                      getVerticalSize(
                                                                          172),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          272),
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          getHorizontalSize(
                                                                              23)),
                                                                  margin:
                                                                      getMargin(
                                                                          right:
                                                                              3)),
                                                              CustomTextFormField(
                                                                  focusNode:
                                                                      FocusNode(),
                                                                  autofocus:
                                                                      true,
                                                                  controller:
                                                                      commentController,
                                                                  hintText:
                                                                      "Comments...............",
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              45,
                                                                          top:
                                                                              13),
                                                                  suffix: Container(
                                                                      margin: getMargin(
                                                                          left:
                                                                              30,
                                                                          top:
                                                                              10,
                                                                          right:
                                                                              15,
                                                                          bottom:
                                                                              11),
                                                                      child: CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgGroup)),
                                                                  suffixConstraints:
                                                                      BoxConstraints(
                                                                          maxHeight:
                                                                              getVerticalSize(34)))
                                                            ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 1,
                                                                top: 32,
                                                                bottom: 31),
                                                            child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgEmojismilingface,
                                                                      height:
                                                                          getVerticalSize(
                                                                              18),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              17),
                                                                      margin: getMargin(
                                                                          right:
                                                                              8)),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgCart,
                                                                      height:
                                                                          getSize(
                                                                              19),
                                                                      width:
                                                                          getSize(
                                                                              19),
                                                                      margin: getMargin(
                                                                          top:
                                                                              22,
                                                                          right:
                                                                              7)),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgIcons,
                                                                      height:
                                                                          getVerticalSize(
                                                                              16),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              17),
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      margin: getMargin(
                                                                          top:
                                                                              29)),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgEllipse7,
                                                                      height:
                                                                          getVerticalSize(
                                                                              38),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              36),
                                                                      radius: BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              19)),
                                                                      margin: getMargin(
                                                                          top:
                                                                              14))
                                                                ]))
                                                      ])),
                                                  Container(
                                                      height:
                                                          getVerticalSize(50),
                                                      width: getHorizontalSize(
                                                          348),
                                                      margin:
                                                          getMargin(top: 59),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            37),
                                                                    child: Text(
                                                                        "Accra ,GHANA",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsBold12))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child:
                                                                    Container(
                                                                        margin: getMargin(
                                                                            bottom:
                                                                                5),
                                                                        padding: getPadding(
                                                                            left:
                                                                                1,
                                                                            top:
                                                                                4,
                                                                            right:
                                                                                1,
                                                                            bottom:
                                                                                4),
                                                                        decoration:
                                                                            AppDecoration
                                                                                .fillBlack900,
                                                                        child: Row(
                                                                            children: [
                                                                              Card(
                                                                                  clipBehavior: Clip.antiAlias,
                                                                                  elevation: 0,
                                                                                  margin: getMargin(top: 1),
                                                                                  shape: RoundedRectangleBorder(side: BorderSide(width: getHorizontalSize(1)), borderRadius: BorderRadiusStyle.circleBorder19),
                                                                                  child: Container(
                                                                                      height: getSize(36),
                                                                                      width: getSize(36),
                                                                                      padding: getPadding(all: 2),
                                                                                      decoration: AppDecoration.outline.copyWith(borderRadius: BorderRadiusStyle.circleBorder19),
                                                                                      child: Stack(children: [
                                                                                        CustomImageView(imagePath: ImageConstant.imgReplacephotohere30x30, height: getSize(30), width: getSize(30), radius: BorderRadius.circular(getHorizontalSize(15)), alignment: Alignment.center)
                                                                                      ]))),
                                                                              Padding(padding: getPadding(left: 8, top: 10, bottom: 9), child: Text("Modella", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsBold12))
                                                                            ])))
                                                          ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16, top: 14),
                                                      child: Text(
                                                          "Modeling gives me joy........",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsBold12)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 8,
                                                          top: 8,
                                                          right: 28),
                                                      child: Row(children: [
                                                        Expanded(
                                                            child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgRectangle32,
                                                                  height:
                                                                      getVerticalSize(
                                                                          172),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          272),
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          getHorizontalSize(
                                                                              23)),
                                                                  margin:
                                                                      getMargin(
                                                                          right:
                                                                              3)),
                                                              CustomTextFormField(
                                                                  focusNode:
                                                                      FocusNode(),
                                                                  autofocus:
                                                                      true,
                                                                  controller:
                                                                      commentoneController,
                                                                  hintText:
                                                                      "Comments...............",
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              45,
                                                                          top:
                                                                              13),
                                                                  suffix: Container(
                                                                      margin: getMargin(
                                                                          left:
                                                                              30,
                                                                          top:
                                                                              10,
                                                                          right:
                                                                              15,
                                                                          bottom:
                                                                              11),
                                                                      child: CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgGroup)),
                                                                  suffixConstraints:
                                                                      BoxConstraints(
                                                                          maxHeight:
                                                                              getVerticalSize(34)))
                                                            ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 1,
                                                                top: 32,
                                                                bottom: 31),
                                                            child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgEmojismilingface,
                                                                      height:
                                                                          getVerticalSize(
                                                                              18),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              17),
                                                                      margin: getMargin(
                                                                          right:
                                                                              8)),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgCart,
                                                                      height:
                                                                          getSize(
                                                                              19),
                                                                      width:
                                                                          getSize(
                                                                              19),
                                                                      margin: getMargin(
                                                                          top:
                                                                              22,
                                                                          right:
                                                                              7)),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgIcons,
                                                                      height:
                                                                          getVerticalSize(
                                                                              16),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              17),
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      margin: getMargin(
                                                                          top:
                                                                              29)),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgEllipse7,
                                                                      height:
                                                                          getVerticalSize(
                                                                              38),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              36),
                                                                      radius: BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              19)),
                                                                      margin: getMargin(
                                                                          top:
                                                                              14))
                                                                ]))
                                                      ])),
                                                  Container(
                                                      height:
                                                          getVerticalSize(50),
                                                      width: getHorizontalSize(
                                                          348),
                                                      margin:
                                                          getMargin(top: 72),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child:
                                                                    Container(
                                                                        margin: getMargin(
                                                                            bottom:
                                                                                5),
                                                                        padding: getPadding(
                                                                            left:
                                                                                1,
                                                                            top:
                                                                                4,
                                                                            right:
                                                                                1,
                                                                            bottom:
                                                                                4),
                                                                        decoration:
                                                                            AppDecoration
                                                                                .fillBlack900,
                                                                        child: Row(
                                                                            children: [
                                                                              Card(
                                                                                  clipBehavior: Clip.antiAlias,
                                                                                  elevation: 0,
                                                                                  margin: getMargin(top: 1),
                                                                                  shape: RoundedRectangleBorder(side: BorderSide(width: getHorizontalSize(1)), borderRadius: BorderRadiusStyle.circleBorder19),
                                                                                  child: Container(
                                                                                      height: getSize(36),
                                                                                      width: getSize(36),
                                                                                      padding: getPadding(all: 2),
                                                                                      decoration: AppDecoration.outline.copyWith(borderRadius: BorderRadiusStyle.circleBorder19),
                                                                                      child: Stack(children: [
                                                                                        CustomImageView(imagePath: ImageConstant.imgReplacephotohere30x30, height: getSize(30), width: getSize(30), radius: BorderRadius.circular(getHorizontalSize(15)), alignment: Alignment.center)
                                                                                      ]))),
                                                                              Padding(padding: getPadding(left: 8, top: 10, bottom: 9), child: Text("Opeyemi", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsBold12))
                                                                            ]))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            37),
                                                                    child: Text(
                                                                        "Lagos ,NIGERIA",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsBold12)))
                                                          ])),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          305),
                                                      margin: getMargin(
                                                          left: 11, right: 32),
                                                      child: Text(
                                                          "Recently i started working on a personal design for my new movie",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsBold12)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 8,
                                                          top: 19,
                                                          right: 28),
                                                      child: Row(children: [
                                                        Expanded(
                                                            child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgRectangle33,
                                                                  height:
                                                                      getVerticalSize(
                                                                          172),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          272),
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          getHorizontalSize(
                                                                              23)),
                                                                  margin:
                                                                      getMargin(
                                                                          right:
                                                                              3)),
                                                              CustomTextFormField(
                                                                  focusNode:
                                                                      FocusNode(),
                                                                  autofocus:
                                                                      true,
                                                                  controller:
                                                                      commenttwoController,
                                                                  hintText:
                                                                      "Comments...............",
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              45,
                                                                          top:
                                                                              13),
                                                                  suffix: Container(
                                                                      margin: getMargin(
                                                                          left:
                                                                              30,
                                                                          top:
                                                                              10,
                                                                          right:
                                                                              15,
                                                                          bottom:
                                                                              11),
                                                                      child: CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgGroup)),
                                                                  suffixConstraints:
                                                                      BoxConstraints(
                                                                          maxHeight:
                                                                              getVerticalSize(34)))
                                                            ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 1,
                                                                top: 32,
                                                                bottom: 31),
                                                            child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgEmojismilingface,
                                                                      height:
                                                                          getVerticalSize(
                                                                              18),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              17),
                                                                      margin: getMargin(
                                                                          right:
                                                                              8)),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgCart,
                                                                      height:
                                                                          getSize(
                                                                              19),
                                                                      width:
                                                                          getSize(
                                                                              19),
                                                                      margin: getMargin(
                                                                          top:
                                                                              22,
                                                                          right:
                                                                              7)),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgIcons,
                                                                      height:
                                                                          getVerticalSize(
                                                                              16),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              17),
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      margin: getMargin(
                                                                          top:
                                                                              29)),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgEllipse7,
                                                                      height:
                                                                          getVerticalSize(
                                                                              38),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              36),
                                                                      radius: BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              19)),
                                                                      margin: getMargin(
                                                                          top:
                                                                              14))
                                                                ]))
                                                      ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 21, top: 13),
                                                      child: Text(
                                                          "People you may know",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtAbrilFatfaceRegular20
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.6)))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 8,
                                                          top: 13,
                                                          right: 20),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        218),
                                                                width:
                                                                    getHorizontalSize(
                                                                        144),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    children: [
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.bottomCenter,
                                                                          child: Padding(
                                                                              padding: getPadding(left: 23, right: 25, bottom: 15),
                                                                              child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                Text("Aleem olatunji", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12),
                                                                                Container(
                                                                                    width: getHorizontalSize(96),
                                                                                    margin: getMargin(top: 13),
                                                                                    padding: getPadding(top: 3, bottom: 3),
                                                                                    decoration: AppDecoration.gradientOrange70002DeeporangeA400.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
                                                                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                                                                                      CustomImageView(svgPath: ImageConstant.imgGrid, height: getSize(12), width: getSize(12), margin: getMargin(top: 3, bottom: 2)),
                                                                                      Text("Friend", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtAbrilFatfaceRegular11.copyWith(letterSpacing: getHorizontalSize(0.6)))
                                                                                    ]))
                                                                              ]))),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgRectangle1983,
                                                                          height: getVerticalSize(
                                                                              216),
                                                                          width: getHorizontalSize(
                                                                              144),
                                                                          radius: BorderRadius.circular(getHorizontalSize(
                                                                              10)),
                                                                          alignment:
                                                                              Alignment.center),
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.bottomCenter,
                                                                          child: Container(
                                                                              padding: getPadding(left: 17, top: 9, right: 17, bottom: 9),
                                                                              decoration: AppDecoration.fillWhiteA700,
                                                                              child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.end, children: [
                                                                                Padding(padding: getPadding(left: 4, top: 12), child: Text("Azeem olatunji", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12)),
                                                                                Align(alignment: Alignment.centerRight, child: Container(width: getHorizontalSize(96), margin: getMargin(top: 16), padding: getPadding(left: 21, top: 3, right: 21, bottom: 3), decoration: AppDecoration.txtGradientOrange70002DeeporangeA400.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder11), child: Text("Friend", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtAbrilFatfaceRegular11.copyWith(letterSpacing: getHorizontalSize(0.6)))))
                                                                              ])))
                                                                    ])),
                                                            Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        218),
                                                                width:
                                                                    getHorizontalSize(
                                                                        144),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgRectangle1985,
                                                                          height: getVerticalSize(
                                                                              216),
                                                                          width: getHorizontalSize(
                                                                              144),
                                                                          radius: BorderRadius.circular(getHorizontalSize(
                                                                              10)),
                                                                          alignment:
                                                                              Alignment.center),
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.bottomCenter,
                                                                          child: Container(
                                                                              padding: getPadding(left: 17, top: 9, right: 17, bottom: 9),
                                                                              decoration: AppDecoration.fillWhiteA700,
                                                                              child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.end, children: [
                                                                                Padding(padding: getPadding(left: 4, top: 12), child: Text("Akeem olatunji", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12)),
                                                                                Align(
                                                                                    alignment: Alignment.centerRight,
                                                                                    child: Container(
                                                                                        width: getHorizontalSize(96),
                                                                                        margin: getMargin(left: 14, top: 16),
                                                                                        padding: getPadding(top: 3, bottom: 3),
                                                                                        decoration: AppDecoration.gradientOrange70002DeeporangeA400.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
                                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                                                                                          CustomImageView(svgPath: ImageConstant.imgGrid, height: getSize(12), width: getSize(12), margin: getMargin(top: 3, bottom: 2)),
                                                                                          Text("Friend", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtAbrilFatfaceRegular11.copyWith(letterSpacing: getHorizontalSize(0.6)))
                                                                                        ])))
                                                                              ])))
                                                                    ]))
                                                          ])),
                                                  Container(
                                                      height:
                                                          getVerticalSize(50),
                                                      width: getHorizontalSize(
                                                          340),
                                                      margin: getMargin(
                                                          left: 8, top: 19),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child:
                                                                    Container(
                                                                        margin: getMargin(
                                                                            bottom:
                                                                                5),
                                                                        padding: getPadding(
                                                                            left:
                                                                                1,
                                                                            top:
                                                                                4,
                                                                            right:
                                                                                1,
                                                                            bottom:
                                                                                4),
                                                                        decoration:
                                                                            AppDecoration
                                                                                .fillBlack900,
                                                                        child: Row(
                                                                            children: [
                                                                              Card(
                                                                                  clipBehavior: Clip.antiAlias,
                                                                                  elevation: 0,
                                                                                  margin: getMargin(top: 1),
                                                                                  shape: RoundedRectangleBorder(side: BorderSide(width: getHorizontalSize(1)), borderRadius: BorderRadiusStyle.circleBorder19),
                                                                                  child: Container(
                                                                                      height: getSize(36),
                                                                                      width: getSize(36),
                                                                                      padding: getPadding(all: 2),
                                                                                      decoration: AppDecoration.outline.copyWith(borderRadius: BorderRadiusStyle.circleBorder19),
                                                                                      child: Stack(children: [
                                                                                        CustomImageView(imagePath: ImageConstant.imgReplacephotohere1, height: getSize(30), width: getSize(30), radius: BorderRadius.circular(getHorizontalSize(15)), alignment: Alignment.center)
                                                                                      ]))),
                                                                              Padding(padding: getPadding(left: 8, top: 10, bottom: 9), child: Text("Memmcol", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsBold12))
                                                                            ]))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            37),
                                                                    child: Text(
                                                                        "Ogun state ,NIGERIA",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsBold12)))
                                                          ])),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 14,
                                                              right: 20),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Expanded(
                                                                    child: Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  8),
                                                                          child: Text(
                                                                              "I just got a new bike.........",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsBold12)),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgRectangle34,
                                                                          height: getVerticalSize(
                                                                              172),
                                                                          width: getHorizontalSize(
                                                                              272),
                                                                          radius: BorderRadius.circular(getHorizontalSize(
                                                                              23)),
                                                                          margin:
                                                                              getMargin(top: 8)),
                                                                      CustomTextFormField(
                                                                          focusNode:
                                                                              FocusNode(),
                                                                          autofocus:
                                                                              true,
                                                                          controller:
                                                                              commentthreeController,
                                                                          hintText:
                                                                              "Comments...............",
                                                                          margin: getMargin(
                                                                              left:
                                                                                  45,
                                                                              top:
                                                                                  13),
                                                                          textInputAction: TextInputAction
                                                                              .done,
                                                                          alignment: Alignment
                                                                              .centerRight,
                                                                          suffix: Container(
                                                                              margin: getMargin(left: 30, top: 10, right: 15, bottom: 11),
                                                                              child: CustomImageView(svgPath: ImageConstant.imgGroup)),
                                                                          suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(34)))
                                                                    ])),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 1,
                                                                        top: 58,
                                                                        bottom:
                                                                            31),
                                                                    child: Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .end,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgEmojismilingface,
                                                                              height: getVerticalSize(18),
                                                                              width: getHorizontalSize(17),
                                                                              margin: getMargin(right: 8)),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgCart,
                                                                              height: getSize(19),
                                                                              width: getSize(19),
                                                                              margin: getMargin(top: 22, right: 7)),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgIcons,
                                                                              height: getVerticalSize(16),
                                                                              width: getHorizontalSize(17),
                                                                              alignment: Alignment.center,
                                                                              margin: getMargin(top: 29)),
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgEllipse7,
                                                                              height: getVerticalSize(38),
                                                                              width: getHorizontalSize(36),
                                                                              radius: BorderRadius.circular(getHorizontalSize(19)),
                                                                              margin: getMargin(top: 14))
                                                                        ]))
                                                              ])))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            height: getVerticalSize(111),
                                            width: double.maxFinite,
                                            margin: getMargin(bottom: 42))),
                                    CustomIconButton(
                                        height: 60,
                                        width: 60,
                                        margin: getMargin(bottom: 102),
                                        variant: IconButtonVariant
                                            .GradientAmberA70001DeeporangeA40001,
                                        shape: IconButtonShape.CircleBorder30,
                                        padding: IconButtonPadding.PaddingAll11,
                                        alignment: Alignment.bottomCenter,
                                        child: CustomImageView(
                                            imagePath: ImageConstant.imgLogo1))
                                  ]))
                        ]))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Iconlylighthome:
        return AppRoutes.homeScreenPage;
      case BottomBarEnum.Gridorange600:
        return "/";
      case BottomBarEnum.Userorange70002:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreenPage:
        return HomeScreenPage();
      default:
        return DefaultWidget();
    }
  }

  onTapImgCircle(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.statusScreenScreenOneScreen);
  }

  onTapImgGroup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reelsScreen);
  }

  onTapImgCart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ecomScreen);
  }

  onTapImgEllipseseven(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.donationScreen);
  }

  onTapVolume(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.messageScreen);
  }

  onTapTrash1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.videoScreen);
  }

  onTapNotification1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationScreen);
  }
}
