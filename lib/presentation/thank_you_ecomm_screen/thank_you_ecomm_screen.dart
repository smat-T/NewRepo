import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/custom_button.dart';

class ThankYouEcommScreen extends StatelessWidget {
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
                              padding: getPadding(top: 30),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(left: 19),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color:
                                                    ColorConstant.amberA70087,
                                                width: getHorizontalSize(1)),
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder15),
                                        child: Container(
                                            height: getSize(30),
                                            width: getSize(30),
                                            padding: getPadding(all: 1),
                                            decoration: AppDecoration
                                                .outlineAmberA70087
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder15),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgIconsbackBlack90007,
                                                  height: getSize(28),
                                                  width: getSize(28),
                                                  alignment: Alignment.center)
                                            ]))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 9, top: 22, right: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                      height: getSize(60),
                                                      width: getSize(60),
                                                      padding: getPadding(
                                                          left: 14,
                                                          top: 17,
                                                          right: 14,
                                                          bottom: 17),
                                                      decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                              image: fs.Svg(
                                                                  ImageConstant
                                                                      .imgGroup22),
                                                              fit: BoxFit
                                                                  .cover)),
                                                      child: Stack(children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgCheckmark,
                                                            height:
                                                                getVerticalSize(
                                                                    22),
                                                            width:
                                                                getHorizontalSize(
                                                                    30),
                                                            alignment: Alignment
                                                                .bottomCenter)
                                                      ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 10, bottom: 5),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("Thank you!",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtSFProDisplayMedium18),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 2),
                                                                child: Text(
                                                                    "Your order #BE12345 has been placed.",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtSFProDisplayRegular16))
                                                          ]))
                                                ]))),
                                    Container(
                                        width: getHorizontalSize(307),
                                        margin: getMargin(
                                            left: 9, top: 25, right: 43),
                                        child: Text(
                                            "We sent an email to Kemibaruwa@gmail.com with your order confirmation and bill. ",
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPromptMedium14)),
                                    Padding(
                                        padding: getPadding(left: 9, top: 14),
                                        child: Text(
                                            "Time placed: 17/02/2020 12:45 CEST",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSFProDisplayMedium14)),
                                    Padding(
                                        padding: getPadding(left: 9, top: 24),
                                        child: Text("Shipping ",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSFProDisplayMedium15)),
                                    Container(
                                        width: getHorizontalSize(343),
                                        margin: getMargin(
                                            left: 9, top: 15, right: 8),
                                        padding: getPadding(
                                            left: 16,
                                            top: 15,
                                            right: 16,
                                            bottom: 15),
                                        decoration: AppDecoration.fillGray10009
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder2),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("Kemi",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtActorRegular14),
                                              Container(
                                                  width: getHorizontalSize(163),
                                                  margin: getMargin(top: 9),
                                                  child: Text(
                                                      "Kemibaruwa@gmail.com\n+234 179 111 1010",
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtAbrilFatfaceRegular14)),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 6, bottom: 14),
                                                  child: Text("Lagos road ",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtAdaminaRegular14))
                                            ])),
                                    Padding(
                                        padding: getPadding(left: 9, top: 24),
                                        child: Text("Billing",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSFProDisplayMedium15)),
                                    Container(
                                        width: getHorizontalSize(343),
                                        margin: getMargin(
                                            left: 9, top: 15, right: 8),
                                        padding: getPadding(
                                            left: 16,
                                            top: 15,
                                            right: 16,
                                            bottom: 15),
                                        decoration: AppDecoration.fillGray10009
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder2),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("Kemi",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtActorRegular14),
                                              Container(
                                                  width: getHorizontalSize(163),
                                                  margin: getMargin(top: 9),
                                                  child: Text(
                                                      "Kemibaruwa@gmail.com\n+234 179 111 1010",
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtAbrilFatfaceRegular14)),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 6, bottom: 14),
                                                  child: Text("Lagos road",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtAdaminaRegular14))
                                            ])),
                                    CustomButton(
                                        height: getVerticalSize(50),
                                        text: "Continue shopping",
                                        margin: getMargin(
                                            left: 24, top: 53, right: 38),
                                        padding: ButtonPadding.PaddingAll10,
                                        fontStyle:
                                            ButtonFontStyle.PoppinsSemiBold20,
                                        onTap: () {
                                          onTapContinue(context);
                                        }),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle19941,
                                        height: getVerticalSize(61),
                                        width: getHorizontalSize(360),
                                        margin: getMargin(top: 30))
                                  ])))
                    ]))));
  }

  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ecomHomeScreen);
  }
}
