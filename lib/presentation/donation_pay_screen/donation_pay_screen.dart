import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:socialapp/widgets/app_bar/appbar_iconbutton_3.dart';
import 'package:socialapp/widgets/app_bar/custom_app_bar.dart';
import 'package:socialapp/widgets/custom_button.dart';
import 'package:socialapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class DonationPayScreen extends StatelessWidget {
  TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(51),
                leadingWidth: 55,
                leading: AppbarIconbutton2(
                    svgPath: ImageConstant.imgAkariconschevronleft,
                    margin: getMargin(left: 22, top: 9, bottom: 10),
                    onTap: () {
                      onTapAkariconschevro1(context);
                    }),
                actions: [
                  AppbarIconbutton3(
                      svgPath: ImageConstant.imgBookmark,
                      margin:
                          getMargin(left: 23, top: 9, right: 23, bottom: 10))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 27, bottom: 27),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(180),
                          width: getHorizontalSize(306),
                          margin: getMargin(left: 17),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    height: getVerticalSize(157),
                                    width: getHorizontalSize(280),
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                  height: getVerticalSize(146),
                                                  width: getHorizontalSize(280),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  24)),
                                                      gradient: LinearGradient(
                                                          begin: Alignment(
                                                              -0.06, 1.2),
                                                          end: Alignment(
                                                              1.23, -0.26),
                                                          colors: [
                                                            ColorConstant
                                                                .deepOrangeA200,
                                                            ColorConstant
                                                                .yellow600
                                                          ])))),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                  height: getVerticalSize(146),
                                                  width: getHorizontalSize(280),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  24)),
                                                      gradient: LinearGradient(
                                                          begin: Alignment(
                                                              -0.06, 1.2),
                                                          end: Alignment(
                                                              1.23, -0.26),
                                                          colors: [
                                                            ColorConstant
                                                                .deepOrangeA2007e,
                                                            ColorConstant
                                                                .yellow6007e
                                                          ])))),
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                  height: getVerticalSize(146),
                                                  width: getHorizontalSize(280),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgLogo1,
                                                            height:
                                                                getVerticalSize(
                                                                    146),
                                                            width:
                                                                getHorizontalSize(
                                                                    280),
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            13),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgMap,
                                                                          height: getVerticalSize(
                                                                              18),
                                                                          width: getHorizontalSize(
                                                                              32),
                                                                          margin: getMargin(
                                                                              top: 63,
                                                                              bottom: 63)),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgLogo1,
                                                                          height: getVerticalSize(
                                                                              146),
                                                                          width:
                                                                              getHorizontalSize(189))
                                                                    ])))
                                                      ])))
                                        ]))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Row(children: [
                                  CustomImageView(
                                      svgPath: ImageConstant
                                          .imgSimpleiconsscpfoundation,
                                      height: getSize(26),
                                      width: getSize(26)),
                                  Padding(
                                      padding: getPadding(left: 12),
                                      child: Text("Isha Foundation",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsSemiBold18))
                                ]))
                          ])),
                      Container(
                          height: getVerticalSize(282),
                          width: getHorizontalSize(345),
                          margin: getMargin(top: 15),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                        padding:
                                            getPadding(left: 18, bottom: 116),
                                        child: Text("Choose Amount",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsSemiBold22))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: getPadding(left: 17),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                        child: Container(
                                                            margin: getMargin(
                                                                right: 10),
                                                            padding: getPadding(
                                                                left: 15,
                                                                top: 29,
                                                                right: 15,
                                                                bottom: 29),
                                                            decoration: AppDecoration
                                                                .outlinePink300
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .circleBorder19),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text("N 500",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtPoppinsSemiBold17)
                                                                ]))),
                                                    Expanded(
                                                        child: Container(
                                                            margin: getMargin(
                                                                left: 10,
                                                                right: 10),
                                                            padding: getPadding(
                                                                left: 16,
                                                                top: 29,
                                                                right: 16,
                                                                bottom: 29),
                                                            decoration: AppDecoration
                                                                .outlineBlack90026
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .circleBorder19),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text("N1000",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtPoppinsSemiBold17Black900)
                                                                ]))),
                                                    Expanded(
                                                        child: Container(
                                                            margin: getMargin(
                                                                left: 10),
                                                            padding: getPadding(
                                                                left: 15,
                                                                top: 29,
                                                                right: 15,
                                                                bottom: 29),
                                                            decoration: AppDecoration
                                                                .outlineBlack90026
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .circleBorder19),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text("N2000",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtPoppinsSemiBold17Black900)
                                                                ])))
                                                  ]),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 3,
                                                      top: 32,
                                                      right: 3),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 11,
                                                                bottom: 13),
                                                            child: SizedBox(
                                                                width:
                                                                    getHorizontalSize(
                                                                        141),
                                                                child: Divider(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1),
                                                                    thickness:
                                                                        getVerticalSize(
                                                                            1),
                                                                    color: ColorConstant
                                                                        .gray50075))),
                                                        Text("or",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsMedium17),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 11,
                                                                bottom: 13),
                                                            child: SizedBox(
                                                                width:
                                                                    getHorizontalSize(
                                                                        141),
                                                                child: Divider(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1),
                                                                    thickness:
                                                                        getVerticalSize(
                                                                            1),
                                                                    color: ColorConstant
                                                                        .gray50075)))
                                                      ])),
                                              CustomTextFormField(
                                                  focusNode: FocusNode(),
                                                  autofocus: true,
                                                  controller: priceController,
                                                  hintText:
                                                      "Enter Price Manually",
                                                  margin: getMargin(
                                                      left: 32,
                                                      top: 29,
                                                      right: 32),
                                                  variant: TextFormFieldVariant
                                                      .FillBluegray10067,
                                                  shape: TextFormFieldShape
                                                      .RoundedBorder20,
                                                  padding: TextFormFieldPadding
                                                      .PaddingT26,
                                                  fontStyle:
                                                      TextFormFieldFontStyle
                                                          .PoppinsMedium16,
                                                  textInputAction:
                                                      TextInputAction.done)
                                            ]))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgSurface2,
                                    height: getVerticalSize(163),
                                    width: getHorizontalSize(23),
                                    alignment: Alignment.topLeft,
                                    margin: getMargin(top: 3),
                                    onTap: () {
                                      onTapImgSurface(context);
                                    }),
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Text("Choose Amount",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsSemiBold22WhiteA700))
                              ])),
                      CustomButton(
                          text: "Donate now",
                          margin: getMargin(
                              left: 23, top: 75, right: 26, bottom: 5),
                          variant: ButtonVariant.GradientAmberA70001Amber600,
                          shape: ButtonShape.RoundedBorder20,
                          onTap: () {
                            onTapDonatenow(context);
                          },
                          alignment: Alignment.center)
                    ]))));
  }

  onTapImgSurface(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenOneScreen);
  }

  onTapDonatenow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.thankYouDonationScreenOneScreen);
  }

  onTapAkariconschevro1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.donationScreen);
  }
}
