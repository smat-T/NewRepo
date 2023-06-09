import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/app_bar/appbar_image.dart';
import 'package:socialapp/widgets/app_bar/custom_app_bar.dart';
import 'package:socialapp/widgets/custom_button.dart';
import 'package:socialapp/widgets/custom_icon_button.dart';
import 'package:socialapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class HomeScreenPage extends StatelessWidget {
  TextEditingController commentController = TextEditingController();

  TextEditingController commentoneController = TextEditingController();

  TextEditingController commenttwoController = TextEditingController();

  TextEditingController commentthreeController = TextEditingController();

  TextEditingController commentfourController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(83),
                leadingWidth: 47,
                leading: AppbarImage(
                    height: getVerticalSize(37),
                    width: getHorizontalSize(33),
                    imagePath: ImageConstant.imgLogo1,
                    margin: getMargin(left: 14, top: 9, bottom: 9)),
                actions: [
                  Padding(
                      padding:
                          getPadding(left: 10, top: 12, right: 10, bottom: 11),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(children: [
                              AppbarImage(
                                  height: getVerticalSize(31),
                                  width: getHorizontalSize(28),
                                  svgPath: ImageConstant.imgSubtract,
                                  margin: getMargin(top: 1),
                                  onTap: () {
                                    onTapSubtract(context);
                                  }),
                              AppbarImage(
                                  height: getSize(28),
                                  width: getSize(28),
                                  svgPath: ImageConstant.imgTrash,
                                  margin: getMargin(left: 21, bottom: 4),
                                  onTap: () {
                                    onTapTrash(context);
                                  }),
                              Padding(
                                  padding:
                                      getPadding(left: 21, top: 3, bottom: 2),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getVerticalSize(18),
                                            width: getHorizontalSize(21),
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  AppbarImage(
                                                      height:
                                                          getVerticalSize(17),
                                                      width:
                                                          getHorizontalSize(21),
                                                      svgPath: ImageConstant
                                                          .imgNotification,
                                                      margin:
                                                          getMargin(top: 1)),
                                                  AppbarImage(
                                                      height:
                                                          getVerticalSize(17),
                                                      width:
                                                          getHorizontalSize(18),
                                                      svgPath: ImageConstant
                                                          .imgNotificationGray50,
                                                      margin: getMargin(
                                                          left: 2, bottom: 1),
                                                      onTap: () {
                                                        onTapNotification(
                                                            context);
                                                      })
                                                ])),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                height: getVerticalSize(5),
                                                width: getHorizontalSize(6),
                                                margin: getMargin(
                                                    left: 8, top: 4, right: 6),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .orange50003,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                3)))))
                                      ]))
                            ])
                          ]))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: IntrinsicWidth(
                                  child: Container(
                                      width: double.maxFinite,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgAvatar,
                                                      height: getSize(72),
                                                      width: getSize(72)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 8, top: 12),
                                                      child: Text("Opeyemi",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtAbhayaLibreMedium115))
                                                ]),
                                            Expanded(
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 12,
                                                        top: 8,
                                                        bottom: 15),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      right:
                                                                          75),
                                                              child: Row(
                                                                  children: [
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            53),
                                                                        width: getHorizontalSize(
                                                                            48),
                                                                        margin: getMargin(
                                                                            bottom:
                                                                                2),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgVector, height: getVerticalSize(53), width: getHorizontalSize(43), alignment: Alignment.centerLeft),
                                                                              Align(alignment: Alignment.center, child: Container(height: getVerticalSize(51), width: getHorizontalSize(48), decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(25)), border: Border.all(color: ColorConstant.whiteA700, width: getHorizontalSize(2)))))
                                                                            ])),
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            53),
                                                                        width: getHorizontalSize(
                                                                            48),
                                                                        margin: getMargin(
                                                                            left:
                                                                                6,
                                                                            bottom:
                                                                                2),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgVector, height: getVerticalSize(53), width: getHorizontalSize(43), alignment: Alignment.centerLeft),
                                                                              Align(alignment: Alignment.center, child: Container(height: getVerticalSize(51), width: getHorizontalSize(48), decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(25)), border: Border.all(color: ColorConstant.whiteA700, width: getHorizontalSize(2)))))
                                                                            ])),
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            53),
                                                                        width: getHorizontalSize(
                                                                            48),
                                                                        margin: getMargin(
                                                                            left:
                                                                                6,
                                                                            bottom:
                                                                                2),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgVector, height: getVerticalSize(53), width: getHorizontalSize(43), alignment: Alignment.centerLeft),
                                                                              Align(alignment: Alignment.center, child: Container(height: getVerticalSize(51), width: getHorizontalSize(48), decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(25)), border: Border.all(color: ColorConstant.whiteA700, width: getHorizontalSize(2)))))
                                                                            ])),
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            53),
                                                                        width: getHorizontalSize(
                                                                            48),
                                                                        margin: getMargin(
                                                                            left:
                                                                                6,
                                                                            top:
                                                                                1,
                                                                            bottom:
                                                                                1),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgVector, height: getVerticalSize(53), width: getHorizontalSize(43), alignment: Alignment.centerLeft),
                                                                              Align(alignment: Alignment.center, child: Container(height: getVerticalSize(51), width: getHorizontalSize(48), decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(25)), border: Border.all(color: ColorConstant.whiteA700, width: getHorizontalSize(2)))))
                                                                            ])),
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            53),
                                                                        width: getHorizontalSize(
                                                                            48),
                                                                        margin: getMargin(
                                                                            left:
                                                                                6,
                                                                            top:
                                                                                2),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgVector, height: getVerticalSize(53), width: getHorizontalSize(43), alignment: Alignment.centerLeft),
                                                                              Align(alignment: Alignment.center, child: Container(height: getVerticalSize(51), width: getHorizontalSize(48), decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(25)), border: Border.all(color: ColorConstant.whiteA700, width: getHorizontalSize(2)))))
                                                                            ])),
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            53),
                                                                        width: getHorizontalSize(
                                                                            48),
                                                                        margin: getMargin(
                                                                            left:
                                                                                6,
                                                                            top:
                                                                                2),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgVector, height: getVerticalSize(53), width: getHorizontalSize(1), alignment: Alignment.centerLeft),
                                                                              CustomImageView(imagePath: ImageConstant.imgCircle, height: getVerticalSize(51), width: getHorizontalSize(48), radius: BorderRadius.circular(getHorizontalSize(25)), alignment: Alignment.center)
                                                                            ])),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgCircle51x48,
                                                                        height: getVerticalSize(
                                                                            51),
                                                                        width: getHorizontalSize(
                                                                            48),
                                                                        radius: BorderRadius.circular(getHorizontalSize(
                                                                            25)),
                                                                        margin: getMargin(
                                                                            left:
                                                                                6,
                                                                            top:
                                                                                2,
                                                                            bottom:
                                                                                2)),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgCircle1,
                                                                        height: getVerticalSize(
                                                                            51),
                                                                        width: getHorizontalSize(
                                                                            48),
                                                                        radius: BorderRadius.circular(getHorizontalSize(
                                                                            25)),
                                                                        margin: getMargin(
                                                                            left:
                                                                                6,
                                                                            top:
                                                                                2,
                                                                            bottom:
                                                                                2))
                                                                  ])),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 1,
                                                                      top: 2),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            bottom:
                                                                                1),
                                                                        child: Text(
                                                                            "Emma",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRobotoMedium12)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            bottom:
                                                                                2),
                                                                        child: Text(
                                                                            "Aishat",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRobotoMedium12)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            bottom:
                                                                                2),
                                                                        child: Text(
                                                                            "Mark",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRobotoMedium12)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                1),
                                                                        child: Text(
                                                                            "Azeez",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRobotoMedium12)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                2),
                                                                        child: Text(
                                                                            "Marvell",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRobotoMedium12Gray50)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                2,
                                                                            bottom:
                                                                                1),
                                                                        child: Text(
                                                                            "Sidikat",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.center,
                                                                            style: AppStyle.txtRobotoMedium12)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                1,
                                                                            bottom:
                                                                                1),
                                                                        child: Text(
                                                                            "Mudi",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.center,
                                                                            style: AppStyle.txtRobotoMedium12Gray90002))
                                                                  ]))
                                                        ])))
                                          ])))),
                          Padding(
                              padding: getPadding(left: 11, top: 19, right: 73),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgAvatarGray40002,
                                    height: getVerticalSize(40),
                                    width: getHorizontalSize(39)),
                                Expanded(
                                    child: CustomButton(
                                        height: getVerticalSize(34),
                                        text: "What’s on your mind Opeyemi?",
                                        margin: getMargin(left: 7, top: 6),
                                        variant: ButtonVariant.FillGray800,
                                        shape: ButtonShape.RoundedBorder10,
                                        padding: ButtonPadding.PaddingT9,
                                        fontStyle:
                                            ButtonFontStyle.AbhayaLibreMedium12,
                                        suffixWidget: Container(
                                            margin: getMargin(left: 30),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgGroup)),
                                        onTap: () {
                                          onTapWhatsonyour(context);
                                        }))
                              ])),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  height: getVerticalSize(15),
                                  width: getHorizontalSize(3),
                                  margin: getMargin(top: 7, right: 25),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.whiteA700,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(7))))),
                          Container(
                              height: getVerticalSize(514),
                              width: getHorizontalSize(350),
                              margin: getMargin(left: 10, top: 7),
                              child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                            height: getVerticalSize(15),
                                            width: getHorizontalSize(3),
                                            margin: getMargin(
                                                right: 23, bottom: 195),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.whiteA700,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            7))))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  height: getVerticalSize(51),
                                                  width: getHorizontalSize(350),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Container(
                                                                margin:
                                                                    getMargin(
                                                                        bottom:
                                                                            6),
                                                                padding:
                                                                    getPadding(
                                                                        left: 1,
                                                                        top: 4,
                                                                        right:
                                                                            1,
                                                                        bottom:
                                                                            4),
                                                                decoration:
                                                                    AppDecoration
                                                                        .fillBlack900,
                                                                child: Row(
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgAvatarWhiteA700,
                                                                          height: getSize(
                                                                              36),
                                                                          width: getSize(
                                                                              36),
                                                                          margin:
                                                                              getMargin(top: 1)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  8,
                                                                              top:
                                                                                  10,
                                                                              bottom:
                                                                                  8),
                                                                          child: Text(
                                                                              "Opeyemi",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsBold12))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            37),
                                                                child: Text(
                                                                    "Lagos ,NIGERIA",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsBold12)))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 16, top: 13),
                                                  child: Text(
                                                      "I just got a new bike.........",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsBold12WhiteA7006c)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 3,
                                                      top: 7,
                                                      right: 30),
                                                  child: Row(children: [
                                                    Expanded(
                                                        child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgRectangle30,
                                                              height:
                                                                  getVerticalSize(
                                                                      172),
                                                              width:
                                                                  getHorizontalSize(
                                                                      272),
                                                              radius: BorderRadius
                                                                  .circular(
                                                                      getHorizontalSize(
                                                                          23))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 13),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                2,
                                                                            bottom:
                                                                                2),
                                                                        child: Text(
                                                                            "1k",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtAbhayaLibreMedium24)),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgEmojismilingface,
                                                                        height: getVerticalSize(
                                                                            18),
                                                                        width: getHorizontalSize(
                                                                            17),
                                                                        margin: getMargin(
                                                                            left:
                                                                                5,
                                                                            top:
                                                                                10,
                                                                            bottom:
                                                                                6)),
                                                                    Expanded(
                                                                        child: CustomTextFormField(
                                                                            focusNode:
                                                                                FocusNode(),
                                                                            autofocus:
                                                                                true,
                                                                            controller:
                                                                                commentController,
                                                                            hintText:
                                                                                "Comments...............",
                                                                            margin:
                                                                                getMargin(left: 5),
                                                                            suffix: Container(margin: getMargin(left: 30, top: 10, right: 15, bottom: 11), child: CustomImageView(svgPath: ImageConstant.imgGroup)),
                                                                            suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(34))))
                                                                  ]))
                                                        ])),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 1,
                                                            top: 32,
                                                            bottom: 31),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgEmojismilingface,
                                                                  height:
                                                                      getVerticalSize(
                                                                          18),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          17),
                                                                  margin:
                                                                      getMargin(
                                                                          right:
                                                                              8)),
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgCart,
                                                                  height:
                                                                      getSize(
                                                                          19),
                                                                  width:
                                                                      getSize(
                                                                          19),
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              22,
                                                                          right:
                                                                              7),
                                                                  onTap: () {
                                                                    onTapImgCart(
                                                                        context);
                                                                  }),
                                                              CustomImageView(
                                                                  svgPath: ImageConstant
                                                                      .imgIcons,
                                                                  height:
                                                                      getVerticalSize(
                                                                          16),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          17),
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              29)),
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
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              14),
                                                                  onTap: () {
                                                                    onTapImgEllipseseven(
                                                                        context);
                                                                  })
                                                            ]))
                                                  ])),
                                              Container(
                                                  height: getVerticalSize(51),
                                                  width: getHorizontalSize(350),
                                                  margin: getMargin(top: 45),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Container(
                                                                margin:
                                                                    getMargin(
                                                                        bottom:
                                                                            6),
                                                                padding:
                                                                    getPadding(
                                                                        left: 1,
                                                                        top: 4,
                                                                        right:
                                                                            1,
                                                                        bottom:
                                                                            4),
                                                                decoration:
                                                                    AppDecoration
                                                                        .fillBlack900,
                                                                child: Row(
                                                                    children: [
                                                                      Card(
                                                                          clipBehavior: Clip
                                                                              .antiAlias,
                                                                          elevation:
                                                                              0,
                                                                          margin: getMargin(
                                                                              top:
                                                                                  1),
                                                                          shape: RoundedRectangleBorder(
                                                                              side: BorderSide(width: getHorizontalSize(1)),
                                                                              borderRadius: BorderRadiusStyle.circleBorder19),
                                                                          child: Container(
                                                                              height: getSize(36),
                                                                              width: getSize(36),
                                                                              padding: getPadding(all: 2),
                                                                              decoration: AppDecoration.outline.copyWith(borderRadius: BorderRadiusStyle.circleBorder19),
                                                                              child: Stack(children: [
                                                                                CustomImageView(imagePath: ImageConstant.imgReplacephotohere, height: getSize(30), width: getSize(30), radius: BorderRadius.circular(getHorizontalSize(15)), alignment: Alignment.center)
                                                                              ]))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  8,
                                                                              top:
                                                                                  9,
                                                                              bottom:
                                                                                  9),
                                                                          child: Text(
                                                                              "Real news",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsBold12))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            37),
                                                                child: Text(
                                                                    "Lagos ,NIGERIA",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsBold12)))
                                                      ])),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(top: 6),
                                                      child: Text(
                                                          "Nollywood movie s movies are still way behind.......",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsBold12))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8,
                                                      top: 14,
                                                      right: 30),
                                                  child: Row(children: [
                                                    Expanded(
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgRectangle31,
                                                              height:
                                                                  getVerticalSize(
                                                                      172),
                                                              width:
                                                                  getHorizontalSize(
                                                                      272),
                                                              radius: BorderRadius
                                                                  .circular(
                                                                      getHorizontalSize(
                                                                          23)),
                                                              margin: getMargin(
                                                                  right: 3)),
                                                          CustomTextFormField(
                                                              focusNode:
                                                                  FocusNode(),
                                                              autofocus: true,
                                                              controller:
                                                                  commentoneController,
                                                              hintText:
                                                                  "Comments...............",
                                                              margin: getMargin(
                                                                  left: 45,
                                                                  top: 13),
                                                              suffix: Container(
                                                                  margin: getMargin(
                                                                      left: 30,
                                                                      top: 10,
                                                                      right: 15,
                                                                      bottom:
                                                                          11),
                                                                  child: CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgGroup)),
                                                              suffixConstraints:
                                                                  BoxConstraints(
                                                                      maxHeight:
                                                                          getVerticalSize(
                                                                              34)))
                                                        ])),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 1,
                                                            top: 32,
                                                            bottom: 31),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgEmojismilingface,
                                                                  height:
                                                                      getVerticalSize(
                                                                          18),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          17),
                                                                  margin:
                                                                      getMargin(
                                                                          right:
                                                                              8)),
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgCart,
                                                                  height:
                                                                      getSize(
                                                                          19),
                                                                  width:
                                                                      getSize(
                                                                          19),
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              22,
                                                                          right:
                                                                              7)),
                                                              CustomImageView(
                                                                  svgPath: ImageConstant
                                                                      .imgIcons,
                                                                  height:
                                                                      getVerticalSize(
                                                                          16),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          17),
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              29)),
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
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              14))
                                                            ]))
                                                  ])),
                                              Container(
                                                  height: getVerticalSize(50),
                                                  width: getHorizontalSize(350),
                                                  margin: getMargin(top: 59),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            37),
                                                                child: Text(
                                                                    "Accra ,GHANA",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsBold12))),
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Container(
                                                                margin:
                                                                    getMargin(
                                                                        bottom:
                                                                            5),
                                                                padding:
                                                                    getPadding(
                                                                        left: 1,
                                                                        top: 4,
                                                                        right:
                                                                            1,
                                                                        bottom:
                                                                            4),
                                                                decoration:
                                                                    AppDecoration
                                                                        .fillBlack900,
                                                                child: Row(
                                                                    children: [
                                                                      Card(
                                                                          clipBehavior: Clip
                                                                              .antiAlias,
                                                                          elevation:
                                                                              0,
                                                                          margin: getMargin(
                                                                              top:
                                                                                  1),
                                                                          shape: RoundedRectangleBorder(
                                                                              side: BorderSide(width: getHorizontalSize(1)),
                                                                              borderRadius: BorderRadiusStyle.circleBorder19),
                                                                          child: Container(
                                                                              height: getSize(36),
                                                                              width: getSize(36),
                                                                              padding: getPadding(all: 2),
                                                                              decoration: AppDecoration.outline.copyWith(borderRadius: BorderRadiusStyle.circleBorder19),
                                                                              child: Stack(children: [
                                                                                CustomImageView(imagePath: ImageConstant.imgReplacephotohere30x30, height: getSize(30), width: getSize(30), radius: BorderRadius.circular(getHorizontalSize(15)), alignment: Alignment.center)
                                                                              ]))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  8,
                                                                              top:
                                                                                  10,
                                                                              bottom:
                                                                                  9),
                                                                          child: Text(
                                                                              "Modella",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsBold12))
                                                                    ])))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 16, top: 14),
                                                  child: Text(
                                                      "Modeling gives me joy........",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsBold12)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8,
                                                      top: 8,
                                                      right: 30),
                                                  child: Row(children: [
                                                    Expanded(
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgRectangle32,
                                                              height:
                                                                  getVerticalSize(
                                                                      172),
                                                              width:
                                                                  getHorizontalSize(
                                                                      272),
                                                              radius: BorderRadius
                                                                  .circular(
                                                                      getHorizontalSize(
                                                                          23)),
                                                              margin: getMargin(
                                                                  right: 3)),
                                                          CustomTextFormField(
                                                              focusNode:
                                                                  FocusNode(),
                                                              autofocus: true,
                                                              controller:
                                                                  commenttwoController,
                                                              hintText:
                                                                  "Comments...............",
                                                              margin: getMargin(
                                                                  left: 45,
                                                                  top: 13),
                                                              suffix: Container(
                                                                  margin: getMargin(
                                                                      left: 30,
                                                                      top: 10,
                                                                      right: 15,
                                                                      bottom:
                                                                          11),
                                                                  child: CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgGroup)),
                                                              suffixConstraints:
                                                                  BoxConstraints(
                                                                      maxHeight:
                                                                          getVerticalSize(
                                                                              34)))
                                                        ])),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 1,
                                                            top: 32,
                                                            bottom: 31),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgEmojismilingface,
                                                                  height:
                                                                      getVerticalSize(
                                                                          18),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          17),
                                                                  margin:
                                                                      getMargin(
                                                                          right:
                                                                              8)),
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgCart,
                                                                  height:
                                                                      getSize(
                                                                          19),
                                                                  width:
                                                                      getSize(
                                                                          19),
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              22,
                                                                          right:
                                                                              7)),
                                                              CustomImageView(
                                                                  svgPath: ImageConstant
                                                                      .imgIcons,
                                                                  height:
                                                                      getVerticalSize(
                                                                          16),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          17),
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              29)),
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
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              14))
                                                            ]))
                                                  ])),
                                              Container(
                                                  height: getVerticalSize(50),
                                                  width: getHorizontalSize(350),
                                                  margin: getMargin(top: 72),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Container(
                                                                margin:
                                                                    getMargin(
                                                                        bottom:
                                                                            5),
                                                                padding:
                                                                    getPadding(
                                                                        left: 1,
                                                                        top: 4,
                                                                        right:
                                                                            1,
                                                                        bottom:
                                                                            4),
                                                                decoration:
                                                                    AppDecoration
                                                                        .fillBlack900,
                                                                child: Row(
                                                                    children: [
                                                                      Card(
                                                                          clipBehavior: Clip
                                                                              .antiAlias,
                                                                          elevation:
                                                                              0,
                                                                          margin: getMargin(
                                                                              top:
                                                                                  1),
                                                                          shape: RoundedRectangleBorder(
                                                                              side: BorderSide(width: getHorizontalSize(1)),
                                                                              borderRadius: BorderRadiusStyle.circleBorder19),
                                                                          child: Container(
                                                                              height: getSize(36),
                                                                              width: getSize(36),
                                                                              padding: getPadding(all: 2),
                                                                              decoration: AppDecoration.outline.copyWith(borderRadius: BorderRadiusStyle.circleBorder19),
                                                                              child: Stack(children: [
                                                                                CustomImageView(imagePath: ImageConstant.imgReplacephotohere30x30, height: getSize(30), width: getSize(30), radius: BorderRadius.circular(getHorizontalSize(15)), alignment: Alignment.center)
                                                                              ]))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  8,
                                                                              top:
                                                                                  10,
                                                                              bottom:
                                                                                  9),
                                                                          child: Text(
                                                                              "Opeyemi",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsBold12))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            37),
                                                                child: Text(
                                                                    "Lagos ,NIGERIA",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsBold12)))
                                                      ])),
                                              Container(
                                                  width: getHorizontalSize(305),
                                                  margin: getMargin(
                                                      left: 11, right: 34),
                                                  child: Text(
                                                      "Recently i started working on a personal design for my new movie",
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsBold12)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8,
                                                      top: 19,
                                                      right: 30),
                                                  child: Row(children: [
                                                    Expanded(
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgRectangle33,
                                                              height:
                                                                  getVerticalSize(
                                                                      172),
                                                              width:
                                                                  getHorizontalSize(
                                                                      272),
                                                              radius: BorderRadius
                                                                  .circular(
                                                                      getHorizontalSize(
                                                                          23)),
                                                              margin: getMargin(
                                                                  right: 3)),
                                                          CustomTextFormField(
                                                              focusNode:
                                                                  FocusNode(),
                                                              autofocus: true,
                                                              controller:
                                                                  commentthreeController,
                                                              hintText:
                                                                  "Comments...............",
                                                              margin: getMargin(
                                                                  left: 45,
                                                                  top: 13),
                                                              suffix: Container(
                                                                  margin: getMargin(
                                                                      left: 30,
                                                                      top: 10,
                                                                      right: 15,
                                                                      bottom:
                                                                          11),
                                                                  child: CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgGroup)),
                                                              suffixConstraints:
                                                                  BoxConstraints(
                                                                      maxHeight:
                                                                          getVerticalSize(
                                                                              34)))
                                                        ])),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 1,
                                                            top: 32,
                                                            bottom: 31),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgEmojismilingface,
                                                                  height:
                                                                      getVerticalSize(
                                                                          18),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          17),
                                                                  margin:
                                                                      getMargin(
                                                                          right:
                                                                              8)),
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgCart,
                                                                  height:
                                                                      getSize(
                                                                          19),
                                                                  width:
                                                                      getSize(
                                                                          19),
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              22,
                                                                          right:
                                                                              7)),
                                                              CustomImageView(
                                                                  svgPath: ImageConstant
                                                                      .imgIcons,
                                                                  height:
                                                                      getVerticalSize(
                                                                          16),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          17),
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              29)),
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
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              14))
                                                            ]))
                                                  ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 21, top: 13),
                                                  child: Text(
                                                      "People you may know",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtAbrilFatfaceRegular20
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.6)))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8,
                                                      top: 13,
                                                      right: 22),
                                                  child: Row(children: [
                                                    Container(
                                                        height: getVerticalSize(
                                                            218),
                                                        width:
                                                            getHorizontalSize(
                                                                144),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  child:
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  23,
                                                                              right:
                                                                                  25,
                                                                              bottom:
                                                                                  15),
                                                                          child: Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Text("Aleem olatunji", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12),
                                                                                Container(
                                                                                    width: getHorizontalSize(96),
                                                                                    margin: getMargin(top: 13),
                                                                                    padding: getPadding(top: 3, bottom: 3),
                                                                                    decoration: AppDecoration.gradientOrange70002DeeporangeA400.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
                                                                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                                                                                      CustomImageView(svgPath: ImageConstant.imgGrid, height: getSize(12), width: getSize(12), margin: getMargin(top: 3, bottom: 2)),
                                                                                      Text("Friend", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtAbrilFatfaceRegular11.copyWith(letterSpacing: getHorizontalSize(0.6)))
                                                                                    ]))
                                                                              ]))),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgRectangle1983,
                                                                  height:
                                                                      getVerticalSize(
                                                                          216),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          144),
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          getHorizontalSize(
                                                                              10)),
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  child:
                                                                      Container(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  17,
                                                                              top:
                                                                                  9,
                                                                              right:
                                                                                  17,
                                                                              bottom:
                                                                                  9),
                                                                          decoration: AppDecoration
                                                                              .fillWhiteA700,
                                                                          child: Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                              children: [
                                                                                Padding(padding: getPadding(left: 4, top: 12), child: Text("Azeem olatunji", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12)),
                                                                                Align(alignment: Alignment.centerRight, child: Container(width: getHorizontalSize(96), margin: getMargin(top: 16), padding: getPadding(left: 21, top: 3, right: 21, bottom: 3), decoration: AppDecoration.txtGradientOrange70002DeeporangeA400.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder11), child: Text("Friend", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtAbrilFatfaceRegular11.copyWith(letterSpacing: getHorizontalSize(0.6)))))
                                                                              ])))
                                                            ])),
                                                    Container(
                                                        height: getVerticalSize(
                                                            218),
                                                        width:
                                                            getHorizontalSize(
                                                                144),
                                                        margin:
                                                            getMargin(left: 32),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgRectangle1985,
                                                                  height:
                                                                      getVerticalSize(
                                                                          216),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          144),
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          getHorizontalSize(
                                                                              10)),
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  child:
                                                                      Container(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  17,
                                                                              top:
                                                                                  9,
                                                                              right:
                                                                                  17,
                                                                              bottom:
                                                                                  9),
                                                                          decoration: AppDecoration
                                                                              .fillWhiteA700,
                                                                          child: Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                              children: [
                                                                                Padding(padding: getPadding(left: 4, top: 12), child: Text("Akeem olatunji", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12)),
                                                                                Align(
                                                                                    alignment: Alignment.centerRight,
                                                                                    child: Container(
                                                                                        margin: getMargin(top: 16),
                                                                                        padding: getPadding(left: 9, top: 3, right: 9, bottom: 3),
                                                                                        decoration: AppDecoration.gradientOrange70002DeeporangeA400.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
                                                                                        child: Row(mainAxisSize: MainAxisSize.min, children: [
                                                                                          CustomImageView(svgPath: ImageConstant.imgGrid, height: getSize(12), width: getSize(12), margin: getMargin(top: 3, bottom: 2)),
                                                                                          Padding(padding: getPadding(left: 16, right: 12), child: Text("Friend", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtAbrilFatfaceRegular11.copyWith(letterSpacing: getHorizontalSize(0.6))))
                                                                                        ])))
                                                                              ])))
                                                            ]))
                                                  ])),
                                              Container(
                                                  height: getVerticalSize(50),
                                                  width: getHorizontalSize(342),
                                                  margin: getMargin(
                                                      left: 8, top: 19),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Container(
                                                                margin:
                                                                    getMargin(
                                                                        bottom:
                                                                            5),
                                                                padding:
                                                                    getPadding(
                                                                        left: 1,
                                                                        top: 4,
                                                                        right:
                                                                            1,
                                                                        bottom:
                                                                            4),
                                                                decoration:
                                                                    AppDecoration
                                                                        .fillBlack900,
                                                                child: Row(
                                                                    children: [
                                                                      Card(
                                                                          clipBehavior: Clip
                                                                              .antiAlias,
                                                                          elevation:
                                                                              0,
                                                                          margin: getMargin(
                                                                              top:
                                                                                  1),
                                                                          shape: RoundedRectangleBorder(
                                                                              side: BorderSide(width: getHorizontalSize(1)),
                                                                              borderRadius: BorderRadiusStyle.circleBorder19),
                                                                          child: Container(
                                                                              height: getSize(36),
                                                                              width: getSize(36),
                                                                              padding: getPadding(all: 2),
                                                                              decoration: AppDecoration.outline.copyWith(borderRadius: BorderRadiusStyle.circleBorder19),
                                                                              child: Stack(children: [
                                                                                CustomImageView(imagePath: ImageConstant.imgReplacephotohere1, height: getSize(30), width: getSize(30), radius: BorderRadius.circular(getHorizontalSize(15)), alignment: Alignment.center)
                                                                              ]))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  8,
                                                                              top:
                                                                                  10,
                                                                              bottom:
                                                                                  9),
                                                                          child: Text(
                                                                              "Memmcol",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsBold12))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            37),
                                                                child: Text(
                                                                    "Ogun state ,NIGERIA",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsBold12)))
                                                      ])),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 14,
                                                          right: 22),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Expanded(
                                                                child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              8),
                                                                      child: Text(
                                                                          "I just got a new bike.........",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtPoppinsBold12)),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgRectangle34,
                                                                      height:
                                                                          getVerticalSize(
                                                                              172),
                                                                      width: getHorizontalSize(
                                                                          272),
                                                                      radius: BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              23)),
                                                                      margin: getMargin(
                                                                          top:
                                                                              8)),
                                                                  CustomTextFormField(
                                                                      focusNode:
                                                                          FocusNode(),
                                                                      autofocus:
                                                                          true,
                                                                      controller:
                                                                          commentfourController,
                                                                      hintText:
                                                                          "Comments...............",
                                                                      margin: getMargin(
                                                                          left:
                                                                              45,
                                                                          top:
                                                                              13),
                                                                      textInputAction:
                                                                          TextInputAction
                                                                              .done,
                                                                      alignment:
                                                                          Alignment
                                                                              .centerRight,
                                                                      suffix: Container(
                                                                          margin: getMargin(
                                                                              left:
                                                                                  30,
                                                                              top:
                                                                                  10,
                                                                              right:
                                                                                  15,
                                                                              bottom:
                                                                                  11),
                                                                          child: CustomImageView(
                                                                              svgPath: ImageConstant
                                                                                  .imgGroup)),
                                                                      suffixConstraints:
                                                                          BoxConstraints(
                                                                              maxHeight: getVerticalSize(34)))
                                                                ])),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 1,
                                                                        top: 58,
                                                                        bottom:
                                                                            31),
                                                                child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgEmojismilingface,
                                                                          height: getVerticalSize(
                                                                              18),
                                                                          width: getHorizontalSize(
                                                                              17),
                                                                          margin:
                                                                              getMargin(right: 8)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgCart,
                                                                          height: getSize(
                                                                              19),
                                                                          width: getSize(
                                                                              19),
                                                                          margin: getMargin(
                                                                              top: 22,
                                                                              right: 7)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgIcons,
                                                                          height: getVerticalSize(
                                                                              16),
                                                                          width: getHorizontalSize(
                                                                              17),
                                                                          alignment: Alignment
                                                                              .center,
                                                                          margin:
                                                                              getMargin(top: 29)),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgEllipse7,
                                                                          height: getVerticalSize(
                                                                              38),
                                                                          width: getHorizontalSize(
                                                                              36),
                                                                          radius: BorderRadius.circular(getHorizontalSize(
                                                                              19)),
                                                                          margin:
                                                                              getMargin(top: 14))
                                                                    ]))
                                                          ])))
                                            ])),
                                    CustomIconButton(
                                        height: 60,
                                        width: 60,
                                        margin: getMargin(bottom: 60),
                                        variant: IconButtonVariant.FillGray5001,
                                        shape: IconButtonShape.CircleBorder30,
                                        padding: IconButtonPadding.PaddingAll11,
                                        alignment: Alignment.bottomCenter,
                                        child: CustomImageView(
                                            imagePath: ImageConstant.imgLogo1))
                                  ]))
                        ])))));
  }

  onTapWhatsonyour(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reelsScreen);
  }

  onTapImgCart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ecomScreen);
  }

  onTapImgEllipseseven(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.donationScreen);
  }

  onTapSubtract(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.messageScreen);
  }

  onTapTrash(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.videoScreen);
  }

  onTapNotification(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationScreen);
  }
}
