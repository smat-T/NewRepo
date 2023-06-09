import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/app_bar/appbar_image.dart';
import 'package:socialapp/widgets/app_bar/custom_app_bar.dart';
import 'package:socialapp/widgets/custom_button.dart';
import 'package:socialapp/widgets/custom_icon_button.dart';

class ProfileScreen extends StatelessWidget {
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
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                            Container(
                                height: getVerticalSize(912),
                                width: double.maxFinite,
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEzgif2,
                                          height: getVerticalSize(144),
                                          width: getHorizontalSize(212),
                                          alignment: Alignment.bottomLeft,
                                          margin: getMargin(bottom: 156)),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                              padding: getPadding(
                                                  top: 10, bottom: 10),
                                              decoration: AppDecoration
                                                  .fillBlack900
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .customBorderTL12),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    CustomAppBar(
                                                        height:
                                                            getVerticalSize(30),
                                                        leadingWidth: 42,
                                                        leading:
                                                            CustomIconButton(
                                                                height: 30,
                                                                width: 30,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            12),
                                                                variant:
                                                                    IconButtonVariant
                                                                        .OutlineOrange70087,
                                                                shape: IconButtonShape
                                                                    .CircleBorder15,
                                                                padding:
                                                                    IconButtonPadding
                                                                        .PaddingAll11,
                                                                onTap: () {
                                                                  onTapBtnArrowleft(
                                                                      context);
                                                                },
                                                                child: CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowleftOrange70002)),
                                                        actions: [
                                                          AppbarImage(
                                                              height:
                                                                  getSize(28),
                                                              width:
                                                                  getSize(28),
                                                              svgPath: ImageConstant
                                                                  .imgIconsmenu,
                                                              margin: getMargin(
                                                                  left: 9,
                                                                  top: 1,
                                                                  right: 9,
                                                                  bottom: 1))
                                                        ]),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 12,
                                                            top: 33,
                                                            right: 58),
                                                        child: Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          203),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          246),
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .topLeft,
                                                                      children: [
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.bottomRight,
                                                                            child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                              Text("Yusuf Aishat", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium20),
                                                                              Padding(padding: getPadding(right: 25), child: Text("Video editor", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanBold14)),
                                                                              CustomButton(width: getHorizontalSize(111), text: "FOLLOW", margin: getMargin(top: 7, right: 8), variant: ButtonVariant.GradientAmberA70001YellowA400, shape: ButtonShape.RoundedBorder10, padding: ButtonPadding.PaddingAll10, fontStyle: ButtonFontStyle.RobotoRomanBold14),
                                                                              Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: Padding(
                                                                                      padding: getPadding(top: 55),
                                                                                      child: Row(children: [
                                                                                        Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                          Text("300K", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium20),
                                                                                          Text("Followers", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanBold14WhiteA70090)
                                                                                        ]),
                                                                                        Padding(
                                                                                            padding: getPadding(left: 61),
                                                                                            child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                              Text("20", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium20),
                                                                                              Text("Post", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanBold14WhiteA70090)
                                                                                            ]))
                                                                                      ])))
                                                                            ])),
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgPhoto105x105,
                                                                            height: getSize(105),
                                                                            width: getSize(105),
                                                                            radius: BorderRadius.circular(getHorizontalSize(52)),
                                                                            alignment: Alignment.topLeft)
                                                                      ])),
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
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          getHorizontalSize(
                                                                              19)),
                                                                  margin: getMargin(
                                                                      left: 8,
                                                                      top: 71,
                                                                      bottom:
                                                                          94),
                                                                  onTap: () {
                                                                    onTapImgEllipseseven(
                                                                        context);
                                                                  })
                                                            ])),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Container(
                                                            margin: getMargin(
                                                                left: 21,
                                                                top: 30,
                                                                right: 18,
                                                                bottom: 394),
                                                            padding: getPadding(
                                                                left: 16,
                                                                top: 9,
                                                                right: 16,
                                                                bottom: 9),
                                                            decoration: AppDecoration
                                                                .fillBluegray10033
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .circleBorder19),
                                                            child: Row(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  CustomButton(
                                                                      height:
                                                                          getVerticalSize(
                                                                              31),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              92),
                                                                      text:
                                                                          "Videos",
                                                                      margin: getMargin(
                                                                          bottom:
                                                                              2),
                                                                      variant:
                                                                          ButtonVariant
                                                                              .FillOrange50002,
                                                                      shape: ButtonShape
                                                                          .RoundedBorder10,
                                                                      padding:
                                                                          ButtonPadding
                                                                              .PaddingAll6,
                                                                      fontStyle:
                                                                          ButtonFontStyle
                                                                              .RobotoRomanBold14),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              33,
                                                                          top:
                                                                              3,
                                                                          bottom:
                                                                              8),
                                                                      child: Text(
                                                                          "Photos",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtPoppinsBold14)),
                                                                  Spacer(),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              5,
                                                                          right:
                                                                              20,
                                                                          bottom:
                                                                              6),
                                                                      child: Text(
                                                                          "Shop",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtPoppinsBold14))
                                                                ])))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 7,
                                                  right: 13,
                                                  bottom: 147),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgImage1,
                                                              height:
                                                                  getVerticalSize(
                                                                      140),
                                                              width:
                                                                  getHorizontalSize(
                                                                      226),
                                                              radius: BorderRadius.only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          getHorizontalSize(
                                                                              12)))),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgImage2,
                                                              height:
                                                                  getVerticalSize(
                                                                      140),
                                                              width:
                                                                  getHorizontalSize(
                                                                      109),
                                                              radius: BorderRadius.only(
                                                                  topRight: Radius
                                                                      .circular(
                                                                          getHorizontalSize(
                                                                              12))))
                                                        ]),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 5),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgImage3,
                                                                  height:
                                                                      getVerticalSize(
                                                                          113),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          115)),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgImage4,
                                                                  height:
                                                                      getVerticalSize(
                                                                          113),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          106)),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgImage5,
                                                                  height:
                                                                      getVerticalSize(
                                                                          113),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          109))
                                                            ])),
                                                    Container(
                                                        height: getVerticalSize(
                                                            113),
                                                        width:
                                                            getHorizontalSize(
                                                                340),
                                                        margin:
                                                            getMargin(top: 5),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgImage10,
                                                                  height:
                                                                      getVerticalSize(
                                                                          113),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          115),
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgImage11,
                                                                  height:
                                                                      getVerticalSize(
                                                                          113),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          106),
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgImage12,
                                                                  height:
                                                                      getVerticalSize(
                                                                          113),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          109),
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Container(
                                                                      height: getVerticalSize(54),
                                                                      width: getHorizontalSize(245),
                                                                      child: Stack(alignment: Alignment.topCenter, children: [
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
                                                                        CustomIconButton(
                                                                            height:
                                                                                48,
                                                                            width:
                                                                                50,
                                                                            variant:
                                                                                IconButtonVariant.GradientAmberA70001DeeporangeA40001,
                                                                            shape: IconButtonShape.CircleBorder24,
                                                                            padding: IconButtonPadding.PaddingAll8,
                                                                            alignment: Alignment.topCenter,
                                                                            child: CustomImageView(imagePath: ImageConstant.imgLogo1))
                                                                      ])))
                                                            ]))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                              padding: getPadding(
                                                  top: 237, right: 58),
                                              child: Text("2",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium20)))
                                    ])),
                            SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                padding: getPadding(left: 152, top: 786),
                                child: IntrinsicWidth(
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                      Container(
                                          height: getVerticalSize(224),
                                          width: getHorizontalSize(144),
                                          child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgRectangle1989,
                                                    height:
                                                        getVerticalSize(216),
                                                    width:
                                                        getHorizontalSize(144),
                                                    radius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                10)),
                                                    alignment:
                                                        Alignment.topCenter),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Container(
                                                        padding: getPadding(
                                                            left: 15,
                                                            top: 11,
                                                            right: 15,
                                                            bottom: 11),
                                                        decoration:
                                                            AppDecoration
                                                                .fillWhiteA700,
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              10),
                                                                  child: Text(
                                                                      "Drag the mechanic",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular12)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              20,
                                                                          right:
                                                                              21),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgGrid,
                                                                            height: getSize(12),
                                                                            width: getSize(12),
                                                                            margin: getMargin(top: 3, bottom: 2)),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 16),
                                                                            child: Text("Friend", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtAbrilFatfaceRegular11.copyWith(letterSpacing: getHorizontalSize(0.6))))
                                                                      ]))
                                                            ])))
                                              ])),
                                      Container(
                                          height: getVerticalSize(224),
                                          width: getHorizontalSize(150),
                                          margin: getMargin(left: 32),
                                          child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgRectangle1991,
                                                    height:
                                                        getVerticalSize(216),
                                                    width:
                                                        getHorizontalSize(144),
                                                    radius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                10)),
                                                    alignment:
                                                        Alignment.topLeft),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Container(
                                                        padding: getPadding(
                                                            left: 21,
                                                            top: 12,
                                                            right: 21,
                                                            bottom: 12),
                                                        decoration:
                                                            AppDecoration
                                                                .fillWhiteA700,
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              9),
                                                                  child: Text(
                                                                      "Meme channel",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular12)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              18,
                                                                          top:
                                                                              19),
                                                                  child: Row(
                                                                      children: [
                                                                        CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgGrid,
                                                                            height: getSize(12),
                                                                            width: getSize(12),
                                                                            margin: getMargin(top: 3, bottom: 2)),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 16),
                                                                            child: Text("Friend", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtAbrilFatfaceRegular11.copyWith(letterSpacing: getHorizontalSize(0.6))))
                                                                      ]))
                                                            ])))
                                              ]))
                                    ])))
                          ])))
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapImgEllipseseven(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.donationScreen);
  }
}
