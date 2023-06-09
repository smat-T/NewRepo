import '../message_screen/widgets/message_screen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/app_bar/appbar_image.dart';
import 'package:socialapp/widgets/app_bar/custom_app_bar.dart';

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            appBar: CustomAppBar(
                height: getVerticalSize(72),
                leadingWidth: 40,
                leading: GestureDetector(
                    onTap: () {
                      onTapBack(context);
                    },
                    child: Container(
                        margin: getMargin(left: 10, top: 15, bottom: 11),
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
                            ]))),
                centerTitle: true,
                title: Text("Messages",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoMedium17),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(34),
                      width: getHorizontalSize(35),
                      svgPath: ImageConstant.imgIconsinfo,
                      margin:
                          getMargin(left: 10, top: 11, right: 10, bottom: 11))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 10, bottom: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 36, right: 66),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("PRIVATE",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoMedium15),
                                Text("GENERAL",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRobotoMedium15DeeporangeA400)
                              ])),
                      Container(
                          height: getSize(6),
                          width: getSize(6),
                          margin: getMargin(left: 64, top: 2),
                          decoration: BoxDecoration(
                              color: ColorConstant.blue400,
                              borderRadius:
                                  BorderRadius.circular(getHorizontalSize(3)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 12, top: 1, right: 11),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(bottom: 3),
                                        child: Text("Pinned Chats",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtAbhayaLibreExtraBold18)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage24x24,
                                        height: getSize(24),
                                        width: getSize(24),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(12)),
                                        margin: getMargin(top: 1))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 6, top: 24, right: 11),
                          child: Row(children: [
                            Container(
                                padding: getPadding(
                                    left: 16, top: 15, right: 16, bottom: 15),
                                decoration: AppDecoration.fillGray10003
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                height: getSize(36),
                                                width: getSize(36),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgImage36x36,
                                                          height: getSize(36),
                                                          width: getSize(36),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      18)),
                                                          alignment:
                                                              Alignment.center),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: Container(
                                                              height:
                                                                  getSize(12),
                                                              width:
                                                                  getSize(12),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .amber300,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              6)),
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .gray5003,
                                                                      width: getHorizontalSize(
                                                                          2)))))
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    left: 8, bottom: 19),
                                                child: Text("Precious",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtAbhayaLibreExtraBold14))
                                          ]),
                                      Padding(
                                          padding:
                                              getPadding(top: 13, bottom: 5),
                                          child: Row(children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgFrame,
                                                height: getSize(12),
                                                width: getSize(12),
                                                margin: getMargin(
                                                    top: 1, bottom: 1)),
                                            Padding(
                                                padding: getPadding(left: 8),
                                                child: Text(
                                                    "Na that project oo! ...",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtAbhayaLibreExtraBold12))
                                          ]))
                                    ])),
                            Container(
                                margin: getMargin(left: 8),
                                padding: getPadding(all: 8),
                                decoration: AppDecoration.fillGray5063.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    height: getSize(36),
                                                    width: getSize(36),
                                                    margin: getMargin(top: 8),
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgImage6,
                                                              height:
                                                                  getSize(36),
                                                              width:
                                                                  getSize(36),
                                                              radius: BorderRadius
                                                                  .circular(
                                                                      getHorizontalSize(
                                                                          18)),
                                                              alignment:
                                                                  Alignment
                                                                      .center),
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              child: Container(
                                                                  height:
                                                                      getSize(
                                                                          12),
                                                                  width:
                                                                      getSize(
                                                                          12),
                                                                  decoration: BoxDecoration(
                                                                      color: ColorConstant
                                                                          .amber800,
                                                                      borderRadius:
                                                                          BorderRadius.circular(getHorizontalSize(
                                                                              6)),
                                                                      border: Border.all(
                                                                          color: ColorConstant
                                                                              .gray5003,
                                                                          width:
                                                                              getHorizontalSize(2)))))
                                                        ])),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 8,
                                                        top: 7,
                                                        bottom: 19),
                                                    child: Text("Akeem",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtAbhayaLibreExtraBold14WhiteA70002)),
                                                Container(
                                                    height: getSize(12),
                                                    width: getSize(12),
                                                    margin: getMargin(
                                                        left: 47, bottom: 32),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .blueA400,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    6))))
                                              ])),
                                      Padding(
                                          padding: getPadding(
                                              left: 8, top: 13, bottom: 13),
                                          child: Text(
                                              "Nigeria military is bad ass",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtAbhayaLibreExtraBold12WhiteA700))
                                    ]))
                          ])),
                      Container(
                          height: getVerticalSize(497),
                          width: double.maxFinite,
                          margin: getMargin(top: 8, bottom: 5),
                          child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder19),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 17, right: 1),
                                                      child: ListView.separated(
                                                          physics:
                                                              BouncingScrollPhysics(),
                                                          shrinkWrap: true,
                                                          separatorBuilder:
                                                              (context, index) {
                                                            return Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            16.5,
                                                                        bottom:
                                                                            16.5),
                                                                child: SizedBox(
                                                                    width: double
                                                                        .maxFinite,
                                                                    child: Divider(
                                                                        height:
                                                                            getVerticalSize(
                                                                                1),
                                                                        thickness:
                                                                            getVerticalSize(
                                                                                1),
                                                                        color: ColorConstant
                                                                            .blueGray3006c)));
                                                          },
                                                          itemCount: 4,
                                                          itemBuilder:
                                                              (context, index) {
                                                            return MessageScreenItemWidget();
                                                          }))),
                                              Padding(
                                                  padding: getPadding(top: 18),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray3006c)),
                                              Container(
                                                  height: getVerticalSize(69),
                                                  width: double.maxFinite,
                                                  margin: getMargin(top: 14),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .topRight,
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Row(
                                                                      children: [
                                                                        Text(
                                                                            "Sulyman ayomide",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRobotoMedium15WhiteA700),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 22, top: 3),
                                                                            child: Text("2 d ago", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium12Bluegray300))
                                                                      ]),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              5),
                                                                      child: Row(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Padding(
                                                                                padding: getPadding(bottom: 5),
                                                                                child: Text("I am sorry for saying you are not my type", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium13Bluegray300)),
                                                                            Padding(
                                                                                padding: getPadding(left: 33, top: 3, bottom: 3),
                                                                                child: Text("2", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoBold12))
                                                                          ]))
                                                                ])),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgPhoto4,
                                                            height: getSize(50),
                                                            width: getSize(50),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        25)),
                                                            alignment: Alignment
                                                                .topLeft,
                                                            margin: getMargin(
                                                                left: 17)),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: SizedBox(
                                                                width: double
                                                                    .maxFinite,
                                                                child: Divider(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1),
                                                                    thickness:
                                                                        getVerticalSize(
                                                                            1),
                                                                    color: ColorConstant
                                                                        .blueGray3006c))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        54),
                                                                width:
                                                                    getHorizontalSize(
                                                                        245),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    children: [
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.bottomCenter,
                                                                          child: Container(
                                                                              margin: getMargin(top: 12),
                                                                              padding: getPadding(left: 11, top: 4, right: 11, bottom: 4),
                                                                              decoration: AppDecoration.fillBluegray10033.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
                                                                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgHomeOrange70002, height: getVerticalSize(30), width: getHorizontalSize(26), margin: getMargin(left: 1, top: 2, bottom: 2)),
                                                                                CustomImageView(svgPath: ImageConstant.imgUserOrange7000232x32, height: getSize(32), width: getSize(32), margin: getMargin(bottom: 2))
                                                                              ]))),
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.topCenter,
                                                                          child: SingleChildScrollView(
                                                                              scrollDirection: Axis.horizontal,
                                                                              padding: getPadding(left: 98, right: 97, bottom: 6),
                                                                              child: IntrinsicWidth(
                                                                                  child: Container(
                                                                                      padding: getPadding(top: 8, bottom: 8),
                                                                                      decoration: AppDecoration.gradientAmberA70001DeeporangeA40001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25),
                                                                                      child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                        CustomImageView(imagePath: ImageConstant.imgLogo1, height: getVerticalSize(31), width: getHorizontalSize(27), margin: getMargin(bottom: 1)),
                                                                                        Container(height: getSize(22), width: getSize(22), margin: getMargin(left: 151, top: 2, bottom: 8), decoration: BoxDecoration(color: ColorConstant.deepOrangeA40002, borderRadius: BorderRadius.circular(getHorizontalSize(11))))
                                                                                      ])))))
                                                                    ])))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 17,
                                                      top: 14,
                                                      right: 3),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgPhoto5,
                                                            height: getSize(50),
                                                            width: getSize(50),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        25)),
                                                            margin: getMargin(
                                                                bottom: 10)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 14,
                                                                top: 30,
                                                                bottom: 15),
                                                            child: Text(
                                                                "I hope best for your journey and hope to ...",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoMedium13Bluegray300)),
                                                        Container(
                                                            margin: getMargin(
                                                                left: 9,
                                                                top: 38),
                                                            decoration: AppDecoration
                                                                .fillAmber600
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
                                                                      width:
                                                                          getSize(
                                                                              22),
                                                                      child: Text(
                                                                          "2",
                                                                          maxLines:
                                                                              null,
                                                                          textAlign: TextAlign
                                                                              .center,
                                                                          style:
                                                                              AppStyle.txtRobotoBold12))
                                                                ]))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 8),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray3006c))
                                            ]))),
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                        margin: getMargin(right: 11),
                                        padding: getPadding(
                                            left: 16,
                                            top: 4,
                                            right: 16,
                                            bottom: 4),
                                        decoration: AppDecoration.fillGray10003
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 10),
                                                  child: Row(children: [
                                                    Container(
                                                        height: getSize(36),
                                                        width: getSize(36),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgImage7,
                                                                  height:
                                                                      getSize(
                                                                          36),
                                                                  width:
                                                                      getSize(
                                                                          36),
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          getHorizontalSize(
                                                                              18)),
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight,
                                                                  child: Container(
                                                                      height:
                                                                          getSize(
                                                                              12),
                                                                      width:
                                                                          getSize(
                                                                              12),
                                                                      decoration: BoxDecoration(
                                                                          color: ColorConstant
                                                                              .amber600,
                                                                          borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                              6)),
                                                                          border: Border.all(
                                                                              color: ColorConstant.gray5003,
                                                                              width: getHorizontalSize(2)))))
                                                            ])),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                48),
                                                        margin: getMargin(
                                                            left: 8, bottom: 3),
                                                        child: Text(
                                                            "Da the director",
                                                            maxLines: null,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtAbhayaLibreExtraBold14))
                                                  ])),
                                              Padding(
                                                  padding: getPadding(top: 13),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgFrame,
                                                            height: getSize(12),
                                                            width: getSize(12),
                                                            margin: getMargin(
                                                                top: 2,
                                                                bottom: 17)),
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    111),
                                                            margin: getMargin(
                                                                left: 7),
                                                            child: Text(
                                                                "When are we shooting the next video",
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtAbhayaLibreExtraBold12))
                                                      ]))
                                            ]))),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                        margin: getMargin(left: 6),
                                        padding: getPadding(all: 16),
                                        decoration: AppDecoration.fillGray10003
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        height: getSize(36),
                                                        width: getSize(36),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgImage8,
                                                                  height:
                                                                      getSize(
                                                                          36),
                                                                  width:
                                                                      getSize(
                                                                          36),
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          getHorizontalSize(
                                                                              18)),
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight,
                                                                  child: Container(
                                                                      height:
                                                                          getSize(
                                                                              12),
                                                                      width:
                                                                          getSize(
                                                                              12),
                                                                      decoration: BoxDecoration(
                                                                          color: ColorConstant
                                                                              .orange70003,
                                                                          borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                              6)),
                                                                          border: Border.all(
                                                                              color: ColorConstant.gray5003,
                                                                              width: getHorizontalSize(2)))))
                                                            ])),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 8,
                                                            bottom: 18),
                                                        child: Text("Obasanjo",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtAbhayaLibreExtraBold14))
                                                  ]),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 12, bottom: 6),
                                                  child: Text(
                                                      "How did he win....",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtAbhayaLibreExtraBold12))
                                            ])))
                              ]))
                    ]))));
  }

  onTapBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenOneScreen);
  }
}
