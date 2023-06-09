import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/custom_button.dart';
import 'package:socialapp/widgets/custom_checkbox.dart';
import 'package:socialapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CheckoutScreen extends StatelessWidget {
  TextEditingController customeraddressController = TextEditingController();

  bool isCheckbox = false;

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
                      Expanded(
                          child: SingleChildScrollView(
                              padding: getPadding(top: 1),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(left: 27),
                                        child: Text("Checkout",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPromptBold36)),
                                    Container(
                                        margin: getMargin(
                                            left: 8, top: 28, right: 9),
                                        padding: getPadding(
                                            left: 16,
                                            top: 14,
                                            right: 16,
                                            bottom: 14),
                                        decoration: AppDecoration.fillGray10007
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 13),
                                                            child: Text(
                                                                "Shiping Information",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPromptMedium10)),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgFrameBlack900,
                                                            height: getSize(30),
                                                            width: getSize(30),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        15)),
                                                            margin: getMargin(
                                                                left: 185))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 10),
                                                  child: Text(
                                                      "Gustavo Septimus",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPromptBold18)),
                                              CustomTextFormField(
                                                  width: getHorizontalSize(217),
                                                  focusNode: FocusNode(),
                                                  autofocus: true,
                                                  controller:
                                                      customeraddressController,
                                                  hintText:
                                                      "Demurin Street, ketu LAGOS ",
                                                  margin: getMargin(top: 4),
                                                  variant: TextFormFieldVariant
                                                      .None,
                                                  fontStyle:
                                                      TextFormFieldFontStyle
                                                          .PromptRegular14,
                                                  textInputAction:
                                                      TextInputAction.done,
                                                  prefix: Container(
                                                      margin: getMargin(
                                                          top: 1,
                                                          right: 9,
                                                          bottom: 4),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgFrameDeepPurple100)),
                                                  prefixConstraints:
                                                      BoxConstraints(
                                                          maxHeight:
                                                              getVerticalSize(
                                                                  22)))
                                            ])),
                                    Container(
                                        margin: getMargin(
                                            left: 8, top: 52, right: 9),
                                        padding: getPadding(
                                            left: 16,
                                            top: 13,
                                            right: 16,
                                            bottom: 13),
                                        decoration: AppDecoration.fillGray10008
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("Courier Service",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPromptMedium10),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 15),
                                                            child: Text(
                                                                "OPAY Express",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPromptBold14)),
                                                        Text(
                                                            "Delivered on Next Possible Day",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPromptRegular14)
                                                      ])),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowrightBlack900,
                                                  height: getSize(30),
                                                  width: getSize(30),
                                                  margin: getMargin(
                                                      top: 23, bottom: 23))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 10, top: 17, right: 7),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Select Payment Method",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPromptMedium10),
                                              Text("Add new card",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPromptMedium10Deeppurple600)
                                            ])),
                                    Padding(
                                        padding: getPadding(left: 10, top: 17),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SingleChildScrollView(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  child: IntrinsicWidth(
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    157),
                                                            width:
                                                                getHorizontalSize(
                                                                    280),
                                                            child: Stack(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .topCenter,
                                                                      child: Container(
                                                                          height: getVerticalSize(
                                                                              146),
                                                                          width: getHorizontalSize(
                                                                              280),
                                                                          decoration: BoxDecoration(
                                                                              borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                                  24)),
                                                                              gradient: LinearGradient(begin: Alignment(-0.06, 1.2), end: Alignment(1.23, -0.26), colors: [
                                                                                ColorConstant.deepOrangeA200,
                                                                                ColorConstant.yellow600
                                                                              ])))),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomCenter,
                                                                      child: Container(
                                                                          height: getVerticalSize(
                                                                              146),
                                                                          width: getHorizontalSize(
                                                                              280),
                                                                          decoration: BoxDecoration(
                                                                              borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                                  24)),
                                                                              gradient: LinearGradient(begin: Alignment(-0.06, 1.2), end: Alignment(1.23, -0.26), colors: [
                                                                                ColorConstant.deepOrangeA2007e,
                                                                                ColorConstant.yellow6007e
                                                                              ])))),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .topCenter,
                                                                      child: Container(
                                                                          height: getVerticalSize(146),
                                                                          width: getHorizontalSize(280),
                                                                          child: Stack(alignment: Alignment.centerRight, children: [
                                                                            CustomImageView(
                                                                                imagePath: ImageConstant.imgNoise,
                                                                                height: getVerticalSize(146),
                                                                                width: getHorizontalSize(280),
                                                                                alignment: Alignment.center),
                                                                            Align(
                                                                                alignment: Alignment.centerRight,
                                                                                child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
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
                                                            height:
                                                                getVerticalSize(
                                                                    146),
                                                            width:
                                                                getHorizontalSize(
                                                                    280),
                                                            margin: getMargin(
                                                                left: 27,
                                                                top: 11),
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            24)),
                                                                gradient: LinearGradient(
                                                                    begin: Alignment(
                                                                        -0.06,
                                                                        1.2),
                                                                    end: Alignment(1.23, -0.26),
                                                                    colors: [
                                                                      ColorConstant
                                                                          .black9007e,
                                                                      ColorConstant
                                                                          .blueGray9007e
                                                                    ])))
                                                      ]))),
                                              SingleChildScrollView(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  child: IntrinsicWidth(
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  153),
                                                          width:
                                                              getHorizontalSize(
                                                                  43),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    child: Container(
                                                                        height: getVerticalSize(
                                                                            146),
                                                                        width: getHorizontalSize(
                                                                            43),
                                                                        decoration: BoxDecoration(
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                                21)),
                                                                            gradient:
                                                                                LinearGradient(begin: Alignment(-0.06, 1.2), end: Alignment(1.23, -0.26), colors: [
                                                                              ColorConstant.black900,
                                                                              ColorConstant.blueGray90001
                                                                            ])))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topRight,
                                                                    child: Container(
                                                                        height: getVerticalSize(
                                                                            146),
                                                                        width: getHorizontalSize(
                                                                            280)))
                                                              ]))))
                                            ])),
                                    CustomCheckbox(
                                        text: "Use as default payment method",
                                        iconSize: getHorizontalSize(20),
                                        value: isCheckbox,
                                        margin: getMargin(left: 17, top: 15),
                                        fontStyle: CheckboxFontStyle
                                            .AbhayaLibreMedium14,
                                        onChange: (value) {
                                          isCheckbox = value;
                                        }),
                                    CustomButton(
                                        height: getVerticalSize(50),
                                        text: "Complete order",
                                        margin: getMargin(
                                            left: 37, top: 27, right: 25),
                                        padding: ButtonPadding.PaddingAll10,
                                        fontStyle:
                                            ButtonFontStyle.PoppinsSemiBold20,
                                        onTap: () {
                                          onTapCompleteorder(context);
                                        },
                                        alignment: Alignment.center),
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgRectangle199461x360,
                                        height: getVerticalSize(61),
                                        width: getHorizontalSize(360),
                                        margin: getMargin(top: 39))
                                  ])))
                    ]))));
  }

  onTapCompleteorder(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.thankYouEcommScreen);
  }
}
