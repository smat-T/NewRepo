import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:socialapp/widgets/app_bar/appbar_iconbutton_3.dart';
import 'package:socialapp/widgets/app_bar/custom_app_bar.dart';
import 'package:socialapp/widgets/custom_button.dart';
import 'package:socialapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class DonationPayScreenOneScreen extends StatelessWidget {
  TextEditingController groupelevenController = TextEditingController();

  TextEditingController grouptenController = TextEditingController();

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
                      onTapAkariconschevro4(context);
                    }),
                actions: [
                  AppbarIconbutton3(
                      svgPath: ImageConstant.imgBookmark,
                      margin:
                          getMargin(left: 23, top: 9, right: 23, bottom: 10))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 15, top: 27, right: 15, bottom: 27),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: getVerticalSize(180),
                              width: getHorizontalSize(306),
                              margin: getMargin(left: 2),
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                            height: getVerticalSize(157),
                                            width: getHorizontalSize(280),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  146),
                                                          width:
                                                              getHorizontalSize(
                                                                  280),
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          24)),
                                                              gradient: LinearGradient(
                                                                  begin:
                                                                      Alignment(
                                                                          -0.06,
                                                                          1.2),
                                                                  end: Alignment(
                                                                      1.23,
                                                                      -0.26),
                                                                  colors: [
                                                                    ColorConstant
                                                                        .deepOrangeA200,
                                                                    ColorConstant
                                                                        .yellow600
                                                                  ])))),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  146),
                                                          width:
                                                              getHorizontalSize(
                                                                  280),
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          24)),
                                                              gradient: LinearGradient(
                                                                  begin:
                                                                      Alignment(
                                                                          -0.06,
                                                                          1.2),
                                                                  end: Alignment(
                                                                      1.23,
                                                                      -0.26),
                                                                  colors: [
                                                                    ColorConstant
                                                                        .deepOrangeA2007e,
                                                                    ColorConstant
                                                                        .yellow6007e
                                                                  ])))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  146),
                                                          width:
                                                              getHorizontalSize(
                                                                  280),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
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
                                                                    alignment:
                                                                        Alignment
                                                                            .center),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Padding(
                                                                        padding: getPadding(left: 13),
                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgMap,
                                                                              height: getVerticalSize(18),
                                                                              width: getHorizontalSize(32),
                                                                              margin: getMargin(top: 63, bottom: 63)),
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgLogo1,
                                                                              height: getVerticalSize(146),
                                                                              width: getHorizontalSize(189))
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
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsSemiBold18))
                                        ]))
                                  ]))),
                      Padding(
                          padding: getPadding(top: 64),
                          child: Text("Choose Amount",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold22WhiteA700)),
                      Container(
                          height: getVerticalSize(106),
                          width: getHorizontalSize(328),
                          margin: getMargin(top: 51),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                        padding: getPadding(left: 3),
                                        child: Text("Choose Amount",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsSemiBold22))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: getPadding(top: 20),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                  child: CustomButton(
                                                      height:
                                                          getVerticalSize(86),
                                                      text: "N 2,500",
                                                      margin:
                                                          getMargin(right: 10),
                                                      variant: ButtonVariant
                                                          .OutlinePink300,
                                                      shape: ButtonShape
                                                          .RoundedBorder20,
                                                      padding: ButtonPadding
                                                          .PaddingT30,
                                                      fontStyle: ButtonFontStyle
                                                          .PoppinsSemiBold17)),
                                              Expanded(
                                                  child: CustomTextFormField(
                                                      focusNode: FocusNode(),
                                                      autofocus: true,
                                                      controller:
                                                          groupelevenController,
                                                      hintText: "N5000",
                                                      margin: getMargin(
                                                          left: 10, right: 10),
                                                      variant:
                                                          TextFormFieldVariant
                                                              .OutlineBlack90026,
                                                      shape: TextFormFieldShape
                                                          .RoundedBorder20,
                                                      padding:
                                                          TextFormFieldPadding
                                                              .PaddingT30,
                                                      fontStyle:
                                                          TextFormFieldFontStyle
                                                              .PoppinsSemiBold17)),
                                              Expanded(
                                                  child: CustomTextFormField(
                                                      focusNode: FocusNode(),
                                                      autofocus: true,
                                                      controller:
                                                          grouptenController,
                                                      hintText: "N6000",
                                                      margin:
                                                          getMargin(left: 10),
                                                      variant:
                                                          TextFormFieldVariant
                                                              .OutlineBlack90026,
                                                      shape: TextFormFieldShape
                                                          .RoundedBorder20,
                                                      padding:
                                                          TextFormFieldPadding
                                                              .PaddingT30_1,
                                                      fontStyle:
                                                          TextFormFieldFontStyle
                                                              .PoppinsSemiBold17,
                                                      textInputAction:
                                                          TextInputAction.done))
                                            ])))
                              ])),
                      Spacer(),
                      CustomButton(
                          text: "subscribe now",
                          margin: getMargin(left: 8, right: 11, bottom: 45),
                          variant: ButtonVariant.GradientAmberA70001Amber600,
                          shape: ButtonShape.RoundedBorder20,
                          onTap: () {
                            onTapSubscribenow(context);
                          })
                    ]))));
  }

  onTapSubscribenow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.thankYouDonationScreenOneScreen);
  }

  onTapAkariconschevro4(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.donationScreen);
  }
}
