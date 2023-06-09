import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/app_bar/appbar_image.dart';
import 'package:socialapp/widgets/app_bar/custom_app_bar.dart';
import 'package:socialapp/widgets/custom_icon_button.dart';
import 'package:socialapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class VideoScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            appBar: CustomAppBar(
                height: getVerticalSize(47),
                leadingWidth: 45,
                leading: AppbarImage(
                    height: getVerticalSize(39),
                    width: getHorizontalSize(35),
                    imagePath: ImageConstant.imgVideoafso1,
                    margin: getMargin(left: 10, top: 3, bottom: 5)),
                title: Padding(
                    padding: getPadding(left: 24),
                    child: Row(children: [
                      AppbarImage(
                          height: getVerticalSize(21),
                          width: getHorizontalSize(19),
                          imagePath: ImageConstant.imgIconlylightplus,
                          margin: getMargin(top: 8, bottom: 11)),
                      Container(
                          height: getVerticalSize(40),
                          width: getHorizontalSize(148),
                          margin: getMargin(left: 12),
                          decoration: AppDecoration.fillGray90004,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(right: 147),
                                    child: SizedBox(
                                        height: getVerticalSize(40),
                                        child: VerticalDivider(
                                            width: getHorizontalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.whiteA700)))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: getPadding(bottom: 39),
                                    child: SizedBox(
                                        width: getHorizontalSize(148),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.whiteA700)))),
                            CustomTextFormField(
                                width: getHorizontalSize(148),
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: searchController,
                                hintText: "Search",
                                margin: getMargin(top: 9),
                                variant:
                                    TextFormFieldVariant.UnderLineWhiteA700,
                                fontStyle:
                                    TextFormFieldFontStyle.RobotoRegular16,
                                alignment: Alignment.bottomCenter)
                          ]))
                    ])),
                actions: [
                  Container(
                      margin: getMargin(top: 4, right: 3),
                      padding: getPadding(left: 7, top: 2, right: 7, bottom: 2),
                      decoration: AppDecoration.outlineWhiteA700,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                padding: getPadding(
                                    left: 13, top: 6, right: 13, bottom: 6),
                                decoration: AppDecoration.fillBluegray900,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      AppbarImage(
                                          height: getSize(24),
                                          width: getSize(24),
                                          svgPath:
                                              ImageConstant.imgSearchAmberA400)
                                    ]))
                          ])),
                  CustomIconButton(
                      height: 40,
                      width: 40,
                      margin: getMargin(left: 4, top: 4, right: 7),
                      variant: IconButtonVariant.FillBlack900,
                      padding: IconButtonPadding.PaddingAll8,
                      child: CustomImageView(svgPath: ImageConstant.imgMic))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 21),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(94),
                                        padding: getPadding(
                                            left: 25,
                                            top: 9,
                                            right: 25,
                                            bottom: 9),
                                        decoration: AppDecoration
                                            .txtFillOrange50002
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder17),
                                        child: Text("For You",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterBold12)),
                                    Container(
                                        width: getHorizontalSize(87),
                                        padding: getPadding(
                                            left: 25,
                                            top: 9,
                                            right: 25,
                                            bottom: 9),
                                        decoration: AppDecoration
                                            .txtOutlineOrange50002
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder17),
                                        child: Text("Travel",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterBold12)),
                                    Container(
                                        width: getHorizontalSize(86),
                                        padding: getPadding(
                                            left: 25,
                                            top: 9,
                                            right: 25,
                                            bottom: 9),
                                        decoration: AppDecoration
                                            .txtOutlineOrange50002
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder17),
                                        child: Text("Music",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterBold12)),
                                    Container(
                                        width: getHorizontalSize(47),
                                        padding: getPadding(top: 8, bottom: 8),
                                        decoration: AppDecoration
                                            .txtOutlineOrange50002
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder17),
                                        child: Text("Desk Setup",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterBold12))
                                  ])),
                          Padding(
                              padding: getPadding(top: 47, right: 17),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgSurface163x23,
                                        height: getVerticalSize(163),
                                        width: getHorizontalSize(23),
                                        margin:
                                            getMargin(top: 128, bottom: 419),
                                        onTap: () {
                                          onTapImgSurface(context);
                                        }),
                                    Container(
                                        height: getVerticalSize(710),
                                        width: getHorizontalSize(320),
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(175),
                                                      width: getHorizontalSize(
                                                          320),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgImage175x320,
                                                                height:
                                                                    getVerticalSize(
                                                                        175),
                                                                width:
                                                                    getHorizontalSize(
                                                                        320),
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child:
                                                                    Container(
                                                                        padding: getPadding(
                                                                            left:
                                                                                7,
                                                                            top:
                                                                                12,
                                                                            right:
                                                                                7,
                                                                            bottom:
                                                                                12),
                                                                        decoration:
                                                                            AppDecoration
                                                                                .gradientBlack90000Black9007f,
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            crossAxisAlignment: CrossAxisAlignment.end,
                                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                                            children: [
                                                                              Padding(padding: getPadding(top: 58), child: Text("23:45", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular10))
                                                                            ])))
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 17, top: 182),
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
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        179),
                                                                child: Text(
                                                                    "why Memmcol is the leading company in Nigeria",
                                                                    maxLines:
                                                                        null,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoBold14)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 5),
                                                                child: Text(
                                                                    "Naija news",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular12)),
                                                            Text(
                                                                "329K views . 1 month ago",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRegular12)
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 17,
                                                          bottom: 126),
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
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        150),
                                                                child: Text(
                                                                    "The future of Africa in 2 minutes",
                                                                    maxLines:
                                                                        null,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoBold14)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 7),
                                                                child: Text(
                                                                    "Africa today",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular12Orange50002)),
                                                            Text(
                                                                "1M views . 1 month ago",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRegular12Orange50002)
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(left: 17),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgGroupOrange70002,
                                                                height:
                                                                    getVerticalSize(
                                                                        3),
                                                                width:
                                                                    getHorizontalSize(
                                                                        11),
                                                                margin:
                                                                    getMargin(
                                                                        right:
                                                                            13)),
                                                            Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        44),
                                                                width:
                                                                    getHorizontalSize(
                                                                        206),
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            659),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomLeft,
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .topCenter,
                                                                          child: Container(
                                                                              height: getVerticalSize(34),
                                                                              width: getHorizontalSize(206),
                                                                              decoration: BoxDecoration(color: ColorConstant.gray800, borderRadius: BorderRadius.circular(getHorizontalSize(10))))),
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .bottomLeft,
                                                                          child: Container(
                                                                              width: getHorizontalSize(90),
                                                                              margin: getMargin(left: 8),
                                                                              child: Text("Comments...............", maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtAbhayaLibreMedium14WhiteA700)))
                                                                    ]))
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(top: 80),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgGroupOrange70002,
                                                                height:
                                                                    getVerticalSize(
                                                                        3),
                                                                width:
                                                                    getHorizontalSize(
                                                                        11),
                                                                margin:
                                                                    getMargin(
                                                                        right:
                                                                            13)),
                                                            Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        42),
                                                                width:
                                                                    getHorizontalSize(
                                                                        206),
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            184),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomLeft,
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .topCenter,
                                                                          child: Container(
                                                                              height: getVerticalSize(34),
                                                                              width: getHorizontalSize(206),
                                                                              decoration: BoxDecoration(color: ColorConstant.gray800, borderRadius: BorderRadius.circular(getHorizontalSize(10))))),
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .bottomLeft,
                                                                          child: Container(
                                                                              width: getHorizontalSize(90),
                                                                              margin: getMargin(left: 8),
                                                                              child: Text("Comments...............", maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtAbhayaLibreMedium14WhiteA700)))
                                                                    ]))
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 4, bottom: 63),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgGroupOrange70002,
                                                                height:
                                                                    getVerticalSize(
                                                                        3),
                                                                width:
                                                                    getHorizontalSize(
                                                                        11),
                                                                margin:
                                                                    getMargin(
                                                                        right:
                                                                            8)),
                                                            Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        44),
                                                                width:
                                                                    getHorizontalSize(
                                                                        206),
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            422),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomLeft,
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .topCenter,
                                                                          child: Container(
                                                                              height: getVerticalSize(34),
                                                                              width: getHorizontalSize(206),
                                                                              decoration: BoxDecoration(color: ColorConstant.gray800, borderRadius: BorderRadius.circular(getHorizontalSize(10))))),
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .bottomLeft,
                                                                          child: Container(
                                                                              width: getHorizontalSize(90),
                                                                              margin: getMargin(left: 8),
                                                                              child: Text("Comments...............", maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtAbhayaLibreMedium14WhiteA700)))
                                                                    ]))
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(left: 17),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgGroupOrange70002,
                                                                height:
                                                                    getVerticalSize(
                                                                        3),
                                                                width:
                                                                    getHorizontalSize(
                                                                        11),
                                                                margin:
                                                                    getMargin(
                                                                        right:
                                                                            13)),
                                                            Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        44),
                                                                width:
                                                                    getHorizontalSize(
                                                                        206),
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            883),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomLeft,
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .topCenter,
                                                                          child: Container(
                                                                              height: getVerticalSize(34),
                                                                              width: getHorizontalSize(206),
                                                                              decoration: BoxDecoration(color: ColorConstant.gray800, borderRadius: BorderRadius.circular(getHorizontalSize(10))))),
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .bottomLeft,
                                                                          child: Container(
                                                                              width: getHorizontalSize(90),
                                                                              margin: getMargin(left: 8),
                                                                              child: Text("Comments...............", maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtAbhayaLibreMedium14WhiteA700)))
                                                                    ]))
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(175),
                                                      width: getHorizontalSize(
                                                          320),
                                                      margin: getMargin(
                                                          bottom: 201),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgImage9,
                                                                height:
                                                                    getVerticalSize(
                                                                        175),
                                                                width:
                                                                    getHorizontalSize(
                                                                        320),
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child: Container(
                                                                    width:
                                                                        getHorizontalSize(
                                                                            320),
                                                                    padding: getPadding(
                                                                        left: 7,
                                                                        top: 15,
                                                                        right:
                                                                            7,
                                                                        bottom:
                                                                            15),
                                                                    decoration:
                                                                        AppDecoration
                                                                            .txtGradientBlack90000Black9007f,
                                                                    child: Text(
                                                                        "23:45",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoRegular10)))
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgImage45x320,
                                                            height:
                                                                getVerticalSize(
                                                                    45),
                                                            width:
                                                                getHorizontalSize(
                                                                    320)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 34),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1)))
                                                      ]))
                                            ]))
                                  ]))
                        ])))));
  }

  onTapImgSurface(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenOneScreen);
  }
}
