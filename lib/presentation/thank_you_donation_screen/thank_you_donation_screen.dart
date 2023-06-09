import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:socialapp/widgets/app_bar/appbar_iconbutton_3.dart';
import 'package:socialapp/widgets/app_bar/custom_app_bar.dart';
import 'package:socialapp/widgets/custom_button.dart';
import 'package:socialapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ThankYouDonationScreen extends StatelessWidget {
  TextEditingController cardpinController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                      onTapAkariconschevro2(context);
                    }),
                actions: [
                  AppbarIconbutton3(
                      svgPath: ImageConstant.imgBookmark,
                      margin:
                          getMargin(left: 23, top: 9, right: 23, bottom: 10))
                ]),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                              padding: getPadding(left: 9, top: 5),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: IntrinsicWidth(
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                              Container(
                                                  height: getVerticalSize(157),
                                                  width: getHorizontalSize(280),
                                                  child: Stack(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        146),
                                                                width:
                                                                    getHorizontalSize(
                                                                        280),
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(getHorizontalSize(
                                                                            24)),
                                                                    gradient: LinearGradient(
                                                                        begin: Alignment(
                                                                            -0.06,
                                                                            1.2),
                                                                        end: Alignment(1.23, -0.26),
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
                                                                        BorderRadius.circular(getHorizontalSize(
                                                                            24)),
                                                                    gradient: LinearGradient(
                                                                        begin: Alignment(
                                                                            -0.06,
                                                                            1.2),
                                                                        end: Alignment(1.23, -0.26),
                                                                        colors: [
                                                                          ColorConstant
                                                                              .deepOrangeA2007e,
                                                                          ColorConstant
                                                                              .yellow6007e
                                                                        ])))),
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
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
                                                                            .centerRight,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgNoise,
                                                                          height: getVerticalSize(
                                                                              146),
                                                                          width: getHorizontalSize(
                                                                              280),
                                                                          alignment:
                                                                              Alignment.center),
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .centerRight,
                                                                          child: Row(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgMap, height: getVerticalSize(18), width: getHorizontalSize(32), margin: getMargin(top: 63, bottom: 63)),
                                                                                Padding(
                                                                                    padding: getPadding(left: 174, top: 17, bottom: 10),
                                                                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                      Align(
                                                                                          alignment: Alignment.centerRight,
                                                                                          child: Container(
                                                                                              height: getVerticalSize(21),
                                                                                              width: getHorizontalSize(25),
                                                                                              child: Stack(alignment: Alignment.centerRight, children: [
                                                                                                Align(alignment: Alignment.center, child: Container(height: getVerticalSize(21), width: getHorizontalSize(25), decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(12))))),
                                                                                                CustomImageView(svgPath: ImageConstant.imgGroup13, height: getVerticalSize(5), width: getHorizontalSize(9), alignment: Alignment.centerRight, margin: getMargin(right: 7))
                                                                                              ]))),
                                                                                      CustomImageView(svgPath: ImageConstant.imgVideocamera, height: getVerticalSize(27), width: getHorizontalSize(35), margin: getMargin(top: 68))
                                                                                    ])),
                                                                                Container(
                                                                                    height: getVerticalSize(146),
                                                                                    width: getHorizontalSize(280),
                                                                                    margin: getMargin(left: 34),
                                                                                    child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                      CustomImageView(imagePath: ImageConstant.imgNoise, height: getVerticalSize(146), width: getHorizontalSize(280), alignment: Alignment.center),
                                                                                      CustomImageView(svgPath: ImageConstant.imgMap, height: getVerticalSize(18), width: getHorizontalSize(31), alignment: Alignment.centerLeft, margin: getMargin(left: 13))
                                                                                    ]))
                                                                              ]))
                                                                    ])))
                                                      ])),
                                              Container(
                                                  height: getVerticalSize(146),
                                                  width: getHorizontalSize(280),
                                                  margin: getMargin(
                                                      left: 27, top: 11),
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
                                                                .black9007e,
                                                            ColorConstant
                                                                .blueGray9007e
                                                          ])))
                                            ]))),
                                    SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: IntrinsicWidth(
                                            child: Container(
                                                height: getVerticalSize(153),
                                                width: getHorizontalSize(44),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topRight,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      146),
                                                              width:
                                                                  getHorizontalSize(
                                                                      44),
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              22)),
                                                                  gradient: LinearGradient(
                                                                      begin: Alignment(
                                                                          -0.06,
                                                                          1.2),
                                                                      end: Alignment(1.23, -0.26),
                                                                      colors: [
                                                                        ColorConstant
                                                                            .black900,
                                                                        ColorConstant
                                                                            .blueGray90001
                                                                      ])))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      146),
                                                              width:
                                                                  getHorizontalSize(
                                                                      280)))
                                                    ]))))
                                  ])),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              autofocus: true,
                              controller: cardpinController,
                              hintText: "Card pin",
                              margin: getMargin(left: 7, top: 65, right: 10),
                              variant: TextFormFieldVariant.OutlineBlack90003,
                              shape: TextFormFieldShape.CircleBorder28,
                              padding: TextFormFieldPadding.PaddingT19,
                              fontStyle:
                                  TextFormFieldFontStyle.AbhayaLibreMedium15),
                          Padding(
                              padding: getPadding(left: 7, top: 8, right: 26),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        padding: getPadding(
                                            left: 22,
                                            top: 16,
                                            right: 22,
                                            bottom: 16),
                                        decoration: AppDecoration
                                            .outlineBlack90004
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder28),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("Exp date",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtAbhayaLibreMedium15),
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          right: 24, bottom: 2),
                                                      child: Text("/",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtAbhayaLibreMedium15Gray90005)))
                                            ])),
                                    CustomButton(
                                        height: getVerticalSize(56),
                                        width: getHorizontalSize(165),
                                        text: "Phone Number*",
                                        variant:
                                            ButtonVariant.OutlineBlack90005,
                                        shape: ButtonShape.RoundedBorder30,
                                        padding: ButtonPadding.PaddingAll19,
                                        fontStyle:
                                            ButtonFontStyle.AbhayaLibreMedium15)
                                  ])),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              autofocus: true,
                              controller: emailController,
                              hintText: "E-mail Address*",
                              margin: getMargin(left: 7, top: 37, right: 10),
                              variant: TextFormFieldVariant.OutlineBlack90006,
                              shape: TextFormFieldShape.CircleBorder28,
                              padding: TextFormFieldPadding.PaddingT19,
                              fontStyle:
                                  TextFormFieldFontStyle.AbhayaLibreMedium15,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.emailAddress),
                          CustomButton(
                              text: "Check new feeds from creators",
                              margin: getMargin(left: 23, top: 71, right: 26),
                              variant:
                                  ButtonVariant.GradientAmberA70001Amber600,
                              shape: ButtonShape.RoundedBorder20,
                              onTap: () {
                                onTapChecknewfeeds(context);
                              },
                              alignment: Alignment.center)
                        ])))));
  }

  onTapChecknewfeeds(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenOneScreen);
  }

  onTapAkariconschevro2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.donationPayScreen);
  }
}
