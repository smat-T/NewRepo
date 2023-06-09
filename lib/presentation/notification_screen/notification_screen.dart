import '../notification_screen/widgets/notification_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/app_bar/appbar_image.dart';
import 'package:socialapp/widgets/app_bar/custom_app_bar.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            appBar: CustomAppBar(
                height: getVerticalSize(82),
                title: Padding(
                    padding: getPadding(left: 21),
                    child: Text("Notifications",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoMedium24)),
                actions: [
                  Padding(
                      padding:
                          getPadding(left: 13, top: 11, right: 13, bottom: 10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(children: [
                              AppbarImage(
                                  height: getVerticalSize(31),
                                  width: getHorizontalSize(28),
                                  svgPath: ImageConstant.imgSubtract,
                                  margin: getMargin(bottom: 3),
                                  onTap: () {
                                    onTapSubtract1(context);
                                  }),
                              AppbarImage(
                                  height: getSize(28),
                                  width: getSize(28),
                                  svgPath: ImageConstant.imgTrash,
                                  margin:
                                      getMargin(left: 21, top: 5, bottom: 1),
                                  onTap: () {
                                    onTapTrash2(context);
                                  }),
                              Padding(
                                  padding: getPadding(left: 24, top: 5),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        AppbarImage(
                                            height: getVerticalSize(17),
                                            width: getHorizontalSize(18),
                                            svgPath: ImageConstant
                                                .imgNotificationGray50),
                                        Container(
                                            height: getVerticalSize(5),
                                            width: getHorizontalSize(6),
                                            margin: getMargin(
                                                left: 6, top: 7, right: 6),
                                            decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.orange50003,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(3))))
                                      ]))
                            ])
                          ]))
                ]),
            body: Container(
                height: getVerticalSize(717),
                width: double.maxFinite,
                padding: getPadding(top: 3, bottom: 3),
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: getPadding(left: 9, top: 86, right: 6),
                          child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(15));
                              },
                              itemCount: 8,
                              itemBuilder: (context, index) {
                                return NotificationItemWidget(
                                    onTapImgTrash: () {
                                  onTapImgTrash(context);
                                });
                              }))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          padding: getPadding(top: 2, bottom: 2),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    padding: getPadding(left: 8),
                                    child: IntrinsicWidth(
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                          Container(
                                              height: getVerticalSize(53),
                                              width: getHorizontalSize(48),
                                              margin: getMargin(bottom: 2),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgVector,
                                                        height:
                                                            getVerticalSize(53),
                                                        width:
                                                            getHorizontalSize(
                                                                43),
                                                        alignment: Alignment
                                                            .centerLeft),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgCircle2,
                                                        height:
                                                            getVerticalSize(51),
                                                        width:
                                                            getHorizontalSize(
                                                                48),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    25)),
                                                        alignment:
                                                            Alignment.center)
                                                  ])),
                                          Container(
                                              height: getVerticalSize(53),
                                              width: getHorizontalSize(48),
                                              margin:
                                                  getMargin(left: 6, bottom: 2),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgVector,
                                                        height:
                                                            getVerticalSize(53),
                                                        width:
                                                            getHorizontalSize(
                                                                43),
                                                        alignment: Alignment
                                                            .centerLeft),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgCircle3,
                                                        height:
                                                            getVerticalSize(51),
                                                        width:
                                                            getHorizontalSize(
                                                                48),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    25)),
                                                        alignment:
                                                            Alignment.center)
                                                  ])),
                                          Container(
                                              height: getVerticalSize(53),
                                              width: getHorizontalSize(48),
                                              margin:
                                                  getMargin(left: 6, bottom: 2),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgVector,
                                                        height:
                                                            getVerticalSize(53),
                                                        width:
                                                            getHorizontalSize(
                                                                43),
                                                        alignment: Alignment
                                                            .centerLeft),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgCircle4,
                                                        height:
                                                            getVerticalSize(51),
                                                        width:
                                                            getHorizontalSize(
                                                                48),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    25)),
                                                        alignment:
                                                            Alignment.center)
                                                  ])),
                                          Container(
                                              height: getVerticalSize(53),
                                              width: getHorizontalSize(48),
                                              margin: getMargin(
                                                  left: 6, top: 1, bottom: 1),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgVector,
                                                        height:
                                                            getVerticalSize(53),
                                                        width:
                                                            getHorizontalSize(
                                                                43),
                                                        alignment: Alignment
                                                            .centerLeft),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgCircle5,
                                                        height:
                                                            getVerticalSize(51),
                                                        width:
                                                            getHorizontalSize(
                                                                48),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    25)),
                                                        alignment:
                                                            Alignment.center)
                                                  ])),
                                          Container(
                                              height: getVerticalSize(53),
                                              width: getHorizontalSize(48),
                                              margin:
                                                  getMargin(left: 6, top: 2),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgVector,
                                                        height:
                                                            getVerticalSize(53),
                                                        width:
                                                            getHorizontalSize(
                                                                43),
                                                        alignment: Alignment
                                                            .centerLeft),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgCircle6,
                                                        height:
                                                            getVerticalSize(51),
                                                        width:
                                                            getHorizontalSize(
                                                                48),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    25)),
                                                        alignment:
                                                            Alignment.center)
                                                  ])),
                                          Container(
                                              height: getVerticalSize(53),
                                              width: getHorizontalSize(48),
                                              margin:
                                                  getMargin(left: 6, top: 2),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgVector,
                                                        height:
                                                            getVerticalSize(53),
                                                        width:
                                                            getHorizontalSize(
                                                                43),
                                                        alignment: Alignment
                                                            .centerLeft),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgCircle,
                                                        height:
                                                            getVerticalSize(51),
                                                        width:
                                                            getHorizontalSize(
                                                                48),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    25)),
                                                        alignment:
                                                            Alignment.center)
                                                  ])),
                                          Container(
                                              height: getVerticalSize(53),
                                              width: getHorizontalSize(48),
                                              margin: getMargin(
                                                  left: 6, top: 1, bottom: 1),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgVector,
                                                        height:
                                                            getVerticalSize(53),
                                                        width:
                                                            getHorizontalSize(
                                                                22),
                                                        alignment: Alignment
                                                            .centerLeft),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgCircle51x48,
                                                        height:
                                                            getVerticalSize(51),
                                                        width:
                                                            getHorizontalSize(
                                                                48),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    25)),
                                                        alignment:
                                                            Alignment.center)
                                                  ])),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgCircle1,
                                              height: getVerticalSize(51),
                                              width: getHorizontalSize(48),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(25)),
                                              margin: getMargin(
                                                  left: 6, top: 2, bottom: 2))
                                        ]))),
                                Padding(
                                    padding: getPadding(
                                        left: 10, top: 2, right: 7, bottom: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("Emma",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium12)),
                                          Padding(
                                              padding: getPadding(bottom: 2),
                                              child: Text("Aishat",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium12)),
                                          Padding(
                                              padding: getPadding(bottom: 2),
                                              child: Text("Mark",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium12)),
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Azeez",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium12)),
                                          Padding(
                                              padding: getPadding(top: 2),
                                              child: Text("Marvell",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium12Gray50)),
                                          Padding(
                                              padding: getPadding(top: 2),
                                              child: Text("Sidikat",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium12)),
                                          Padding(
                                              padding:
                                                  getPadding(top: 1, bottom: 1),
                                              child: Text("Mudi",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium12Gray90002))
                                        ]))
                              ])))
                ]))));
  }

  onTapImgTrash(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.videoScreen);
  }

  onTapSubtract1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.messageScreen);
  }

  onTapTrash2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.videoScreen);
  }
}
