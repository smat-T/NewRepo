import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:socialapp/widgets/app_bar/appbar_iconbutton_3.dart';
import 'package:socialapp/widgets/app_bar/custom_app_bar.dart';
import 'package:socialapp/widgets/custom_button.dart';

class DonationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            appBar: CustomAppBar(
                height: getVerticalSize(51),
                leadingWidth: 55,
                leading: AppbarIconbutton2(
                    svgPath: ImageConstant.imgAkariconschevronleft,
                    margin: getMargin(left: 22, top: 9, bottom: 10),
                    onTap: () {
                      onTapAkariconschevro(context);
                    }),
                actions: [
                  AppbarIconbutton3(
                      svgPath: ImageConstant.imgBookmark,
                      margin:
                          getMargin(left: 23, top: 9, right: 23, bottom: 10))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 49, bottom: 49),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(right: 11),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgSurface1,
                                        height: getVerticalSize(163),
                                        width: getHorizontalSize(23),
                                        margin: getMargin(top: 177),
                                        onTap: () {
                                          onTapImgSurface(context);
                                        }),
                                    Container(
                                        height: getVerticalSize(324),
                                        width: getHorizontalSize(319),
                                        margin: getMargin(left: 6, bottom: 15),
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "Donate for kids to their well being",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsSemiBold18),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 7),
                                                            child: Row(
                                                                children: [
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgSimpleiconsscpfoundation,
                                                                      height:
                                                                          getSize(
                                                                              26),
                                                                      width: getSize(
                                                                          26)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              12),
                                                                      child: Text(
                                                                          "Isha Foundation",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtPoppinsSemiBold18))
                                                                ])),
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    319),
                                                            margin: getMargin(
                                                                top: 11),
                                                            child: RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                          text:
                                                                              "We accomplish",
                                                                          style: TextStyle(
                                                                              color: ColorConstant.gray50001,
                                                                              fontSize: getFontSize(20),
                                                                              fontFamily: 'Poppins',
                                                                              fontWeight: FontWeight.w400)),
                                                                      TextSpan(
                                                                          text:
                                                                              " ",
                                                                          style: TextStyle(
                                                                              color: ColorConstant.gray50001,
                                                                              fontSize: getFontSize(20),
                                                                              fontFamily: 'Poppins',
                                                                              fontWeight: FontWeight.w400)),
                                                                      TextSpan(
                                                                          text:
                                                                              "this through our goals through AFSOEN  unique social network \n",
                                                                          style: TextStyle(
                                                                              color: ColorConstant.gray50001,
                                                                              fontSize: getFontSize(20),
                                                                              fontFamily: 'Poppins',
                                                                              fontWeight: FontWeight.w400)),
                                                                      TextSpan(
                                                                          text:
                                                                              "+more",
                                                                          style: TextStyle(
                                                                              color: ColorConstant.black900,
                                                                              fontSize: getFontSize(20),
                                                                              fontFamily: 'Poppins',
                                                                              fontWeight: FontWeight.w600))
                                                                    ]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left))
                                                      ])),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(157),
                                                      width: getHorizontalSize(
                                                          280),
                                                      margin:
                                                          getMargin(left: 14),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
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
                                                                            begin:
                                                                                Alignment(-0.06, 1.2),
                                                                            end: Alignment(1.23, -0.26),
                                                                            colors: [
                                                                              ColorConstant.deepOrangeA200,
                                                                              ColorConstant.yellow600
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
                                                                            begin:
                                                                                Alignment(-0.06, 1.2),
                                                                            end: Alignment(1.23, -0.26),
                                                                            colors: [
                                                                              ColorConstant.deepOrangeA2007e,
                                                                              ColorConstant.yellow6007e
                                                                            ])))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child:
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            146),
                                                                        width: getHorizontalSize(
                                                                            280),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgLogo1, height: getVerticalSize(146), width: getHorizontalSize(280), alignment: Alignment.center),
                                                                              Align(
                                                                                  alignment: Alignment.center,
                                                                                  child: Container(
                                                                                      width: getHorizontalSize(266),
                                                                                      margin: getMargin(left: 13),
                                                                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                                        CustomImageView(svgPath: ImageConstant.imgMap, height: getVerticalSize(18), width: getHorizontalSize(32), margin: getMargin(top: 63, bottom: 63)),
                                                                                        CustomImageView(imagePath: ImageConstant.imgLogo1, height: getVerticalSize(146), width: getHorizontalSize(189))
                                                                                      ])))
                                                                            ])))
                                                          ])))
                                            ]))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 16, top: 54, right: 14),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("2000+ Donated",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsMedium15),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              height: getVerticalSize(28),
                                              width: getHorizontalSize(123),
                                              margin: getMargin(top: 5),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse1,
                                                        height: getSize(28),
                                                        width: getSize(28),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    14)),
                                                        alignment: Alignment
                                                            .centerLeft),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse2,
                                                        height: getSize(28),
                                                        width: getSize(28),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    14)),
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        margin: getMargin(
                                                            left: 19)),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse328x28,
                                                        height: getSize(28),
                                                        width: getSize(28),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    14)),
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        margin: getMargin(
                                                            left: 38)),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse4,
                                                        height: getSize(28),
                                                        width: getSize(28),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    14)),
                                                        alignment: Alignment
                                                            .centerRight,
                                                        margin: getMargin(
                                                            right: 38)),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse5,
                                                        height: getSize(28),
                                                        width: getSize(28),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    14)),
                                                        alignment: Alignment
                                                            .centerRight,
                                                        margin: getMargin(
                                                            right: 19)),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Container(
                                                            width: getSize(28),
                                                            padding: getPadding(
                                                                left: 8,
                                                                top: 6,
                                                                right: 8,
                                                                bottom: 6),
                                                            decoration: AppDecoration
                                                                .txtOutlineWhiteA70005
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .txtCircleBorder14),
                                                            child: Text("9+",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsMedium9)))
                                                  ])))
                                    ]),
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Total Donation",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsMedium15),
                                          Padding(
                                              padding: getPadding(top: 5),
                                              child: Text("N3456.08",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium18))
                                        ]))
                              ])),
                      CustomButton(
                          text: "Proceed to donate",
                          margin: getMargin(
                              left: 23, top: 80, right: 26, bottom: 5),
                          variant: ButtonVariant.GradientAmberA70001Amber600,
                          shape: ButtonShape.RoundedBorder20,
                          onTap: () {
                            onTapProceedto(context);
                          })
                    ]))));
  }

  onTapImgSurface(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenOneScreen);
  }

  onTapProceedto(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.donationPayScreen);
  }

  onTapAkariconschevro(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenOneScreen);
  }
}
