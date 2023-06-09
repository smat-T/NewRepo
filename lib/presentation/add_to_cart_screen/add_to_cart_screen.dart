import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/app_bar/appbar_image.dart';
import 'package:socialapp/widgets/app_bar/custom_app_bar.dart';
import 'package:socialapp/widgets/custom_button.dart';
import 'package:socialapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddToCartScreen extends StatelessWidget {
  TextEditingController sizeoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(381),
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage241,
                                height: getVerticalSize(381),
                                width: getHorizontalSize(360),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(left: 9, right: 5),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomAppBar(
                                              height: getVerticalSize(36),
                                              leadingWidth: 39,
                                              leading: GestureDetector(
                                                  onTap: () {
                                                    onTapBack(context);
                                                  },
                                                  child: Container(
                                                      margin: getMargin(
                                                          left: 9, bottom: 6),
                                                      padding:
                                                          getPadding(all: 1),
                                                      decoration: AppDecoration
                                                          .outlineAmberA70087
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .circleBorder15),
                                                      child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            AppbarImage(
                                                                height:
                                                                    getSize(28),
                                                                width:
                                                                    getSize(28),
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgIconsbackBlack90007)
                                                          ]))),
                                              actions: [
                                                Container(
                                                    margin: getMargin(
                                                        left: 5,
                                                        top: 1,
                                                        right: 5),
                                                    padding: getPadding(
                                                        left: 10,
                                                        top: 9,
                                                        right: 10,
                                                        bottom: 9),
                                                    decoration: AppDecoration
                                                        .fillWhiteA700
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .circleBorder19),
                                                    child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          AppbarImage(
                                                              height:
                                                                  getSize(15),
                                                              width:
                                                                  getSize(15),
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgBag,
                                                              margin: getMargin(
                                                                  left: 1,
                                                                  bottom: 1))
                                                        ]))
                                              ]),
                                          Padding(
                                              padding: getPadding(
                                                  top: 240, right: 19),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgEye,
                                                        height:
                                                            getVerticalSize(13),
                                                        width:
                                                            getHorizontalSize(
                                                                48),
                                                        margin:
                                                            getMargin(top: 13)),
                                                    Container(
                                                        height:
                                                            getVerticalSize(26),
                                                        width:
                                                            getHorizontalSize(
                                                                29),
                                                        margin: getMargin(
                                                            left: 106),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Container(
                                                                      height:
                                                                          getVerticalSize(
                                                                              26),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              29),
                                                                      decoration: BoxDecoration(
                                                                          color: ColorConstant
                                                                              .whiteA700,
                                                                          borderRadius:
                                                                              BorderRadius.circular(getHorizontalSize(14))))),
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgFavorite,
                                                                  height:
                                                                      getVerticalSize(
                                                                          11),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          13),
                                                                  alignment:
                                                                      Alignment
                                                                          .center)
                                                            ]))
                                                  ]))
                                        ])))
                          ])),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  height: getVerticalSize(463),
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 0,
                                                margin: EdgeInsets.all(0),
                                                color: ColorConstant.whiteA700,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderTL30),
                                                child: Container(
                                                    height:
                                                        getVerticalSize(412),
                                                    width: double.maxFinite,
                                                    padding: getPadding(
                                                        left: 16,
                                                        top: 22,
                                                        right: 16,
                                                        bottom: 22),
                                                    decoration: AppDecoration
                                                        .fillWhiteA700
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .customBorderTL30),
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        children: [
                                                          CustomButton(
                                                              height:
                                                                  getVerticalSize(
                                                                      50),
                                                              width:
                                                                  getHorizontalSize(
                                                                      200),
                                                              text:
                                                                  "Add to cart",
                                                              margin: getMargin(
                                                                  right: 10,
                                                                  bottom: 11),
                                                              padding:
                                                                  ButtonPadding
                                                                      .PaddingT13,
                                                              fontStyle:
                                                                  ButtonFontStyle
                                                                      .PoppinsSemiBold16,
                                                              prefixWidget: Container(
                                                                  margin:
                                                                      getMargin(
                                                                          right:
                                                                              15),
                                                                  child: CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgCar)),
                                                              onTap: () {
                                                                onTapAddtocart(
                                                                    context);
                                                              },
                                                              alignment: Alignment
                                                                  .bottomRight),
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          bottom:
                                                                              96),
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
                                                                        Text(
                                                                            "Description",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtPoppinsSemiBold16Black900),
                                                                        Container(
                                                                            width:
                                                                                getHorizontalSize(270),
                                                                            margin: getMargin(left: 1, top: 13),
                                                                            child: Text("Amaze your friends with your funny meme T-shirt\nLets get a little funny", maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular11))
                                                                      ]))),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              child: Card(
                                                                  clipBehavior: Clip
                                                                      .antiAlias,
                                                                  elevation: 0,
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              69,
                                                                          right:
                                                                              2),
                                                                  color: ColorConstant
                                                                      .whiteA700,
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .circleBorder19),
                                                                  child: Container(
                                                                      height: getVerticalSize(132),
                                                                      width: getHorizontalSize(40),
                                                                      padding: getPadding(left: 10, top: 11, right: 10, bottom: 11),
                                                                      decoration: AppDecoration.outlineBlack90019.copyWith(borderRadius: BorderRadiusStyle.circleBorder19),
                                                                      child: Stack(children: [
                                                                        CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgColormeta,
                                                                            height: getVerticalSize(110),
                                                                            width: getHorizontalSize(20),
                                                                            alignment: Alignment.center)
                                                                      ])))),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              95),
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
                                                                        Text(
                                                                            "Size",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtPoppinsSemiBold16Black900),
                                                                        CustomTextFormField(
                                                                            focusNode:
                                                                                FocusNode(),
                                                                            autofocus:
                                                                                true,
                                                                            controller:
                                                                                sizeoneController,
                                                                            margin:
                                                                                getMargin(left: 1, top: 12),
                                                                            textInputAction: TextInputAction.done)
                                                                      ]))),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                5),
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              Container(
                                                                                  width: getHorizontalSize(97),
                                                                                  child: RichText(
                                                                                      text: TextSpan(children: [
                                                                                        TextSpan(text: "Meme lord\r\n", style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(18), fontFamily: 'Poppins', fontWeight: FontWeight.w600)),
                                                                                        TextSpan(text: "Meme Dress\r", style: TextStyle(color: ColorConstant.gray700, fontSize: getFontSize(11), fontFamily: 'Poppins', fontWeight: FontWeight.w400))
                                                                                      ]),
                                                                                      textAlign: TextAlign.left)),
                                                                              Padding(
                                                                                  padding: getPadding(top: 5),
                                                                                  child: Row(children: [
                                                                                    CustomImageView(svgPath: ImageConstant.imgBagAmberA700, height: getVerticalSize(11), width: getHorizontalSize(75), margin: getMargin(top: 3, bottom: 2)),
                                                                                    Padding(padding: getPadding(left: 9), child: Text("(320 Review)", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular11Black900))
                                                                                  ])),
                                                                              CustomButton(height: getVerticalSize(30), width: getHorizontalSize(70), text: "-   1   +", margin: getMargin(left: 19, top: 252), variant: ButtonVariant.FillOrange50002, shape: ButtonShape.CircleBorder15, padding: ButtonPadding.PaddingAll6, fontStyle: ButtonFontStyle.PoppinsRegular14)
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                78,
                                                                            bottom:
                                                                                289),
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.end,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              Container(width: getHorizontalSize(60), margin: getMargin(right: 10), child: Text("Total Price\nN2000", maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtPoppinsBold18)),
                                                                              Padding(padding: getPadding(top: 19), child: Text("Avaliable in stok", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsSemiBold11Black900))
                                                                            ]))
                                                                  ]))
                                                        ])))),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle1994,
                                            height: getVerticalSize(61),
                                            width: getHorizontalSize(360),
                                            alignment: Alignment.bottomCenter)
                                      ]))))
                    ]))));
  }

  onTapBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ecomHomeScreen);
  }

  onTapAddtocart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shoppingCartscreenScreen);
  }
}
