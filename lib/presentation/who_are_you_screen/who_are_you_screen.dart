import '../who_are_you_screen/widgets/who_are_you_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/custom_button.dart';

class WhoAreYouScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 12, top: 48),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: getMargin(bottom: 95),
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: ColorConstant.orange70087,
                                            width: getHorizontalSize(1)),
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder15),
                                    child: Container(
                                        height: getSize(30),
                                        width: getSize(30),
                                        padding: getPadding(all: 1),
                                        decoration: AppDecoration
                                            .outlineOrange70087
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder15),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowleftOrange700,
                                              height: getSize(28),
                                              width: getSize(28),
                                              alignment: Alignment.center,
                                              onTap: () {
                                                onTapImgArrowleft(context);
                                              })
                                        ]))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgLogo1,
                                    height: getVerticalSize(125),
                                    width: getHorizontalSize(119),
                                    margin: getMargin(left: 71))
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 11),
                              child: Text("Who are you?",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtAbhayaLibreMedium24WhiteA700))),
                      Container(
                          height: getVerticalSize(540),
                          width: double.maxFinite,
                          margin: getMargin(top: 2),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEzgif2,
                                height: getVerticalSize(144),
                                width: getHorizontalSize(212),
                                alignment: Alignment.bottomLeft),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: getPadding(left: 22, right: 13),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Expanded(
                                              child: GridView.builder(
                                                  shrinkWrap: true,
                                                  gridDelegate:
                                                      SliverGridDelegateWithFixedCrossAxisCount(
                                                          mainAxisExtent:
                                                              getVerticalSize(
                                                                  181),
                                                          crossAxisCount: 2,
                                                          mainAxisSpacing:
                                                              getHorizontalSize(
                                                                  19),
                                                          crossAxisSpacing:
                                                              getHorizontalSize(
                                                                  19)),
                                                  physics:
                                                      BouncingScrollPhysics(),
                                                  itemCount: 4,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return WhoAreYouItemWidget();
                                                  })),
                                          Padding(
                                              padding: getPadding(top: 39),
                                              child: Text(
                                                  "Entertain - INSPIRE - Earn"
                                                      .toUpperCase(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtABeeZeeItalic14
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  2.0))))
                                        ]))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: GestureDetector(
                                    onTap: () {
                                      onTapButtonbar(context);
                                    },
                                    child: Container(
                                        margin: getMargin(bottom: 34),
                                        padding: getPadding(
                                            left: 22,
                                            top: 10,
                                            right: 22,
                                            bottom: 10),
                                        decoration: AppDecoration.fillBlack900,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomButton(
                                                  text: "EXPLORE NOW",
                                                  variant: ButtonVariant
                                                      .GradientOrangeA70001Orange600,
                                                  fontStyle: ButtonFontStyle
                                                      .AbrilFatfaceRegular16)
                                            ]))))
                          ]))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapButtonbar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.weAreAllDoneScreen);
  }
}
