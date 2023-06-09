import '../ecom_home_screen/widgets/features_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/app_bar/appbar_image.dart';
import 'package:socialapp/widgets/app_bar/custom_app_bar.dart';
import 'package:socialapp/widgets/custom_icon_button.dart';
import 'package:socialapp/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class EcomHomeScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray5005,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(97),
                leadingWidth: 45,
                leading: CustomIconButton(
                    height: 35,
                    width: 35,
                    margin: getMargin(left: 10, top: 3, bottom: 18),
                    variant: IconButtonVariant.FillBlack900,
                    padding: IconButtonPadding.PaddingAll8,
                    child: CustomImageView(svgPath: ImageConstant.imgMenu)),
                actions: [
                  Container(
                      margin: getMargin(left: 13, top: 3, right: 13, bottom: 3),
                      padding: getPadding(left: 4, top: 6, right: 4, bottom: 6),
                      decoration: AppDecoration.fillGray300.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder25),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            AppbarImage(
                                height: getVerticalSize(37),
                                width: getHorizontalSize(41),
                                imagePath: ImageConstant.imgRectangle97,
                                margin: getMargin(right: 1, bottom: 1))
                          ]))
                ]),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 59, top: 8),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Welcome",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold25),
                                CustomImageView(
                                    imagePath: ImageConstant.imgEcomlogo1,
                                    height: getVerticalSize(33),
                                    width: getHorizontalSize(31),
                                    margin: getMargin(left: 8, bottom: 5))
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 26, top: 5, right: 9),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: CustomSearchView(
                                            focusNode: FocusNode(),
                                            autofocus: true,
                                            controller: searchController,
                                            hintText: "Search...",
                                            prefix: Container(
                                                margin: getMargin(
                                                    left: 13,
                                                    top: 12,
                                                    right: 15,
                                                    bottom: 10),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgLocationTeal400)),
                                            prefixConstraints: BoxConstraints(
                                                maxHeight: getVerticalSize(50)),
                                            suffix: Container(
                                                margin: getMargin(
                                                    left: 30,
                                                    top: 19,
                                                    right: 26,
                                                    bottom: 13),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgSearch)),
                                            suffixConstraints: BoxConstraints(
                                                maxHeight:
                                                    getVerticalSize(50)))),
                                    CustomIconButton(
                                        height: 50,
                                        width: 50,
                                        margin: getMargin(left: 15),
                                        variant: IconButtonVariant.FillBlack900,
                                        shape: IconButtonShape.CircleBorder24,
                                        padding: IconButtonPadding.PaddingAll16,
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgVolumeWhiteA700))
                                  ]))),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: getPadding(top: 28),
                          child: IntrinsicWidth(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                Padding(
                                    padding: getPadding(top: 13, bottom: 13),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage44x44,
                                              height: getSize(44),
                                              width: getSize(44)),
                                          Padding(
                                              padding: getPadding(top: 7),
                                              child: Text("Bags".toUpperCase(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtAbhayaLibreExtraBold8
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.8))))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 13, bottom: 4),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.all(0),
                                              color: ColorConstant.whiteA700,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder22),
                                              child: Container(
                                                  height: getSize(44),
                                                  width: getSize(44),
                                                  decoration: AppDecoration
                                                      .fillWhiteA700
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .circleBorder22),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgWatches,
                                                            height:
                                                                getVerticalSize(
                                                                    43),
                                                            width:
                                                                getHorizontalSize(
                                                                    41),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        22)),
                                                            alignment: Alignment
                                                                .center),
                                                        CustomIconButton(
                                                            height: 44,
                                                            width: 44,
                                                            variant:
                                                                IconButtonVariant
                                                                    .FillWhiteA700,
                                                            shape: IconButtonShape
                                                                .CircleBorder24,
                                                            alignment: Alignment
                                                                .center,
                                                            child: CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgGroup62))
                                                      ]))),
                                          Container(
                                              width: getHorizontalSize(36),
                                              margin: getMargin(top: 7),
                                              child: Text(
                                                  "Watches".toUpperCase(),
                                                  maxLines: null,
                                                  textAlign: TextAlign.center,
                                                  style: AppStyle
                                                      .txtAbhayaLibreExtraBold8
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.8))))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 16),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.all(0),
                                              color: ColorConstant.amber7008b,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder34),
                                              child: Container(
                                                  height: getSize(69),
                                                  width: getSize(69),
                                                  decoration: AppDecoration
                                                      .fillAmber7008b
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder34),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgShoes,
                                                            height:
                                                                getVerticalSize(
                                                                    61),
                                                            width:
                                                                getHorizontalSize(
                                                                    57),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        34)),
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Card(
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                elevation: 0,
                                                                margin:
                                                                    EdgeInsets
                                                                        .all(0),
                                                                color:
                                                                    ColorConstant
                                                                        .amber700,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder34),
                                                                child:
                                                                    Container(
                                                                        height: getSize(
                                                                            69),
                                                                        width: getSize(
                                                                            69),
                                                                        padding: getPadding(
                                                                            left:
                                                                                9,
                                                                            top:
                                                                                8,
                                                                            right:
                                                                                9,
                                                                            bottom:
                                                                                8),
                                                                        decoration: AppDecoration
                                                                            .fillAmber700
                                                                            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder34),
                                                                        child: Stack(children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgShoes50x48,
                                                                              height: getVerticalSize(50),
                                                                              width: getHorizontalSize(48),
                                                                              radius: BorderRadius.circular(getHorizontalSize(34)),
                                                                              alignment: Alignment.center)
                                                                        ]))))
                                                      ]))),
                                          Padding(
                                              padding:
                                                  getPadding(left: 18, top: 7),
                                              child: Text("Shoes".toUpperCase(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtAbhayaLibreExtraBold8Amber700
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.8))))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 13, bottom: 13),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.all(0),
                                              color: ColorConstant.whiteA700,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder22),
                                              child: Container(
                                                  height: getSize(44),
                                                  width: getSize(44),
                                                  decoration: AppDecoration
                                                      .fillWhiteA700
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .circleBorder22),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgIcebluemirror,
                                                            height:
                                                                getVerticalSize(
                                                                    22),
                                                            width:
                                                                getHorizontalSize(
                                                                    32),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        22)),
                                                            alignment: Alignment
                                                                .center),
                                                        CustomIconButton(
                                                            height: 44,
                                                            width: 44,
                                                            variant:
                                                                IconButtonVariant
                                                                    .FillWhiteA700,
                                                            shape: IconButtonShape
                                                                .CircleBorder24,
                                                            alignment: Alignment
                                                                .center,
                                                            child: CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgGroup64))
                                                      ]))),
                                          Padding(
                                              padding: getPadding(top: 7),
                                              child: Text(
                                                  "Glasses".toUpperCase(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtAbhayaLibreExtraBold8
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.8))))
                                        ])),
                                Container(
                                    width: getHorizontalSize(105),
                                    margin: getMargin(
                                        left: 16, top: 13, bottom: 13),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Card(
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    elevation: 0,
                                                    margin: EdgeInsets.all(0),
                                                    color:
                                                        ColorConstant.whiteA700,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder22),
                                                    child: Container(
                                                        height: getSize(44),
                                                        width: getSize(44),
                                                        decoration: AppDecoration
                                                            .fillWhiteA700
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .circleBorder22),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgHeadphones,
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
                                                                          .center,
                                                                  child: Card(
                                                                      clipBehavior:
                                                                          Clip
                                                                              .antiAlias,
                                                                      elevation:
                                                                          0,
                                                                      margin: EdgeInsets
                                                                          .all(
                                                                              0),
                                                                      color: ColorConstant
                                                                          .whiteA700,
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadiusStyle.circleBorder22),
                                                                      child: Container(
                                                                          height: getSize(44),
                                                                          width: getSize(44),
                                                                          padding: getPadding(all: 3),
                                                                          decoration: AppDecoration.fillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.circleBorder22),
                                                                          child: Stack(children: [
                                                                            CustomImageView(
                                                                                imagePath: ImageConstant.imgHeadphones,
                                                                                height: getSize(36),
                                                                                width: getSize(36),
                                                                                radius: BorderRadius.circular(getHorizontalSize(18)),
                                                                                alignment: Alignment.center)
                                                                          ]))))
                                                            ]))),
                                                Padding(
                                                    padding: getPadding(top: 7),
                                                    child: Text(
                                                        "Audio".toUpperCase(),
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtAbhayaLibreExtraBold8
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.8))))
                                              ]),
                                          Padding(
                                              padding: getPadding(left: 16),
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        height: getSize(44),
                                                        width: getSize(44),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgShadow,
                                                                  height:
                                                                      getSize(
                                                                          34),
                                                                  width:
                                                                      getSize(
                                                                          34),
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          getHorizontalSize(
                                                                              17)),
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  margin:
                                                                      getMargin(
                                                                          bottom:
                                                                              1)),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Card(
                                                                      clipBehavior:
                                                                          Clip
                                                                              .antiAlias,
                                                                      elevation:
                                                                          0,
                                                                      margin: EdgeInsets
                                                                          .all(
                                                                              0),
                                                                      color: ColorConstant
                                                                          .whiteA700,
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadiusStyle.circleBorder22),
                                                                      child: Container(
                                                                          height: getSize(44),
                                                                          width: getSize(44),
                                                                          padding: getPadding(left: 2, top: 1, right: 2, bottom: 1),
                                                                          decoration: AppDecoration.fillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.circleBorder22),
                                                                          child: Stack(children: [
                                                                            CustomImageView(
                                                                                imagePath: ImageConstant.imgEarrings,
                                                                                height: getSize(40),
                                                                                width: getSize(40),
                                                                                radius: BorderRadius.circular(getHorizontalSize(20)),
                                                                                alignment: Alignment.center)
                                                                          ]))))
                                                            ])),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 7),
                                                        child: Text(
                                                            "EarRings"
                                                                .toUpperCase(),
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .txtAbhayaLibreExtraBold8
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.8))))
                                                  ]))
                                        ]))
                              ]))),
                      Container(
                          height: getVerticalSize(184),
                          width: double.maxFinite,
                          margin: getMargin(top: 29),
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    height: getVerticalSize(184),
                                    child: ListView.separated(
                                        padding:
                                            getPadding(left: 6, bottom: 24),
                                        scrollDirection: Axis.horizontal,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(15));
                                        },
                                        itemCount: 2,
                                        itemBuilder: (context, index) {
                                          return FeaturesItemWidget();
                                        }))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: GestureDetector(
                                    onTap: () {
                                      onTapSurface(context);
                                    },
                                    child: Container(
                                        height: getVerticalSize(163),
                                        width: getHorizontalSize(26),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(13)),
                                            gradient: LinearGradient(
                                                begin: Alignment(0.5, 0),
                                                end: Alignment(0.5, 1),
                                                colors: [
                                                  ColorConstant.black900,
                                                  ColorConstant.black90000
                                                ])))))
                          ])),
                      Container(
                          height: getVerticalSize(118),
                          width: double.maxFinite,
                          margin: getMargin(top: 154),
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgBackground,
                                height: getVerticalSize(87),
                                width: getHorizontalSize(360),
                                alignment: Alignment.bottomCenter),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    height: getVerticalSize(87),
                                    width: getHorizontalSize(75),
                                    margin: getMargin(left: 69),
                                    padding: getPadding(
                                        left: 17,
                                        top: 31,
                                        right: 17,
                                        bottom: 31),
                                    decoration: AppDecoration.fillBlack900,
                                    child: Stack(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgDashboard1,
                                          height: getSize(24),
                                          width: getSize(24),
                                          alignment: Alignment.bottomRight)
                                    ]))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    height: getVerticalSize(87),
                                    width: getHorizontalSize(75),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.black900))),
                            CustomImageView(
                                svgPath: ImageConstant.imgItem,
                                height: getVerticalSize(87),
                                width: getHorizontalSize(126),
                                alignment: Alignment.bottomRight,
                                margin: getMargin(right: 15)),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: getPadding(top: 29),
                                    child: SizedBox(
                                        width: double.maxFinite,
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.gray10006)))),
                            CustomImageView(
                                svgPath: ImageConstant.imgClockWhiteA700,
                                height: getSize(73),
                                width: getSize(73),
                                alignment: Alignment.topCenter),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    height: getVerticalSize(63),
                                    width: getHorizontalSize(75),
                                    margin: getMargin(left: 5, bottom: 14),
                                    padding: getPadding(
                                        left: 26,
                                        top: 21,
                                        right: 26,
                                        bottom: 21),
                                    decoration: AppDecoration.fillBlack900,
                                    child: Stack(children: [
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgHomeGray40004,
                                          height: getSize(21),
                                          width: getSize(21),
                                          alignment: Alignment.center)
                                    ])))
                          ]))
                    ]))));
  }

  onTapSurface(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenOneScreen);
  }
}
