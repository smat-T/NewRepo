import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:socialapp/widgets/app_bar/appbar_iconbutton_3.dart';
import 'package:socialapp/widgets/app_bar/custom_app_bar.dart';
import 'package:socialapp/widgets/custom_button.dart';

class ThankYouDonationScreenOneScreen extends StatelessWidget {
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
                      onTapAkariconschevro3(context);
                    }),
                actions: [
                  AppbarIconbutton3(
                      svgPath: ImageConstant.imgBookmark,
                      margin:
                          getMargin(left: 23, top: 9, right: 23, bottom: 10))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 22, bottom: 22),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(136),
                          width: getHorizontalSize(146),
                          padding: getPadding(all: 38),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: fs.Svg(ImageConstant.imgGroup95),
                                  fit: BoxFit.cover)),
                          child: Stack(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCheckmark,
                                height: getVerticalSize(53),
                                width: getHorizontalSize(69),
                                alignment: Alignment.bottomCenter)
                          ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: getVerticalSize(188),
                              width: getHorizontalSize(345),
                              margin: getMargin(top: 42),
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding: getPadding(left: 18),
                                            child: Text("Choose Amount",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsSemiBold22))),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgSurface3,
                                        height: getVerticalSize(163),
                                        width: getHorizontalSize(23),
                                        alignment: Alignment.bottomLeft,
                                        onTap: () {
                                          onTapImgSurface(context);
                                        }),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                            padding: getPadding(right: 39),
                                            child: Text("Thanks for donating",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsSemiBold24))),
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Padding(
                                            padding: getPadding(bottom: 41),
                                            child: Text(
                                                "The world is a better place with you in it.",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsSemiBold16)))
                                  ]))),
                      Spacer(),
                      CustomButton(
                          text: "Check new feeds from creators",
                          margin: getMargin(left: 23, right: 26, bottom: 50),
                          variant: ButtonVariant.GradientAmberA70001Amber600,
                          shape: ButtonShape.RoundedBorder20,
                          onTap: () {
                            onTapChecknewfeeds(context);
                          })
                    ]))));
  }

  onTapImgSurface(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenOneScreen);
  }

  onTapChecknewfeeds(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenOneScreen);
  }

  onTapAkariconschevro3(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.donationPayScreen);
  }
}
