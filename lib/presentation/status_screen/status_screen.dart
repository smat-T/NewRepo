import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/app_bar/appbar_image.dart';
import 'package:socialapp/widgets/app_bar/custom_app_bar.dart';
import 'package:socialapp/widgets/custom_floating_button.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            body: Container(
                height: getVerticalSize(800),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage812x360,
                      height: getVerticalSize(812),
                      width: getHorizontalSize(360),
                      radius: BorderRadius.circular(getHorizontalSize(12)),
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.center,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                                child: SingleChildScrollView(
                                    child: Container(
                                        height: getVerticalSize(800),
                                        width: double.maxFinite,
                                        child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(800),
                                                      width: double.maxFinite)),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Container(
                                                      padding: getPadding(
                                                          left: 14,
                                                          top: 49,
                                                          right: 14,
                                                          bottom: 49),
                                                      decoration: AppDecoration
                                                          .gradientGray90048OrangeA70048,
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgPhoto34x34,
                                                                height:
                                                                    getSize(34),
                                                                width:
                                                                    getSize(34),
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            17)),
                                                                margin: getMargin(
                                                                    top: 201)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 3,
                                                                        top: 3),
                                                                child: Text(
                                                                    "Your stories",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoMedium10))
                                                          ]))),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgSurface,
                                                  height: getVerticalSize(163),
                                                  width: getHorizontalSize(23),
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  margin:
                                                      getMargin(bottom: 269),
                                                  onTap: () {
                                                    onTapImgSurface(context);
                                                  })
                                            ])))),
                            CustomAppBar(
                                height: getVerticalSize(779),
                                leadingWidth: 37,
                                leading: AppbarImage(
                                    height: getSize(28),
                                    width: getSize(28),
                                    svgPath: ImageConstant.imgIconsclose,
                                    margin: getMargin(left: 9),
                                    onTap: () {
                                      onTapIconsclose(context);
                                    }),
                                title: Padding(
                                    padding: getPadding(left: 15),
                                    child: Row(children: [
                                      AppbarImage(
                                          height: getSize(28),
                                          width: getSize(28),
                                          svgPath: ImageConstant.imgIconssave),
                                      AppbarImage(
                                          height: getSize(28),
                                          width: getSize(28),
                                          svgPath: ImageConstant.imgMusic,
                                          margin: getMargin(left: 15)),
                                      AppbarImage(
                                          height: getSize(28),
                                          width: getSize(28),
                                          svgPath: ImageConstant.imgLink,
                                          margin: getMargin(left: 15))
                                    ])),
                                actions: [
                                  AppbarImage(
                                      height: getSize(28),
                                      width: getSize(28),
                                      svgPath: ImageConstant.imgClose,
                                      margin: getMargin(left: 15)),
                                  AppbarImage(
                                      height: getSize(28),
                                      width: getSize(28),
                                      svgPath:
                                          ImageConstant.imgIconsstikersmile,
                                      margin: getMargin(left: 15)),
                                  AppbarImage(
                                      height: getSize(28),
                                      width: getSize(28),
                                      svgPath: ImageConstant.imgIconspendraw,
                                      margin: getMargin(left: 15)),
                                  AppbarImage(
                                      height: getSize(28),
                                      width: getSize(28),
                                      svgPath: ImageConstant.imgIconstext,
                                      margin: getMargin(left: 15, right: 22))
                                ])
                          ]))
                ])),
            floatingActionButton: CustomFloatingButton(
                height: 44,
                width: 44,
                child: CustomImageView(
                    svgPath: ImageConstant.imgArrowright,
                    height: getVerticalSize(22.0),
                    width: getHorizontalSize(22.0)))));
  }

  onTapImgSurface(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenOneScreen);
  }

  onTapIconsclose(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenOneScreen);
  }
}
