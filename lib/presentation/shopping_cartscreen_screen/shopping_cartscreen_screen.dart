import '../shopping_cartscreen_screen/widgets/shopping_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/custom_button.dart';

class ShoppingCartscreenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 7, top: 4, right: 7, bottom: 4),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Shopping Cart",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAbhayaLibreMedium18Gray90005),
                      Text("2 items - Total 147,45€",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAbhayaLibreMedium11),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(top: 25),
                              child: Text("Wilson Hammer 5.3",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtAbhayaLibreMedium15Gray90005))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(top: 3),
                              child: Text("Adult Tennis Racket",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtAbhayaLibreMedium11Bluegray40001
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2))))),
                      Padding(
                          padding: getPadding(top: 16, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgFraiselarge1,
                                    height: getVerticalSize(170),
                                    width: getHorizontalSize(150)),
                                Padding(
                                    padding: getPadding(top: 3, bottom: 19),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          ListView.separated(
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              shrinkWrap: true,
                                              separatorBuilder:
                                                  (context, index) {
                                                return SizedBox(
                                                    height:
                                                        getVerticalSize(20));
                                              },
                                              itemCount: 2,
                                              itemBuilder: (context, index) {
                                                return ShoppingItemWidget();
                                              }),
                                          Padding(
                                              padding: getPadding(top: 20),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 10, bottom: 7),
                                                        child: Text("Qty",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtAbhayaLibreMedium15Gray90005)),
                                                    CustomButton(
                                                        height:
                                                            getVerticalSize(36),
                                                        width:
                                                            getHorizontalSize(
                                                                99),
                                                        text: "1",
                                                        margin:
                                                            getMargin(left: 33),
                                                        variant: ButtonVariant
                                                            .OutlineBluegray50,
                                                        shape: ButtonShape
                                                            .RoundedBorder2,
                                                        padding: ButtonPadding
                                                            .PaddingAll10,
                                                        fontStyle: ButtonFontStyle
                                                            .AbhayaLibreMedium13)
                                                  ]))
                                        ]))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 64),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgIconshipping,
                                    height: getSize(24),
                                    width: getSize(24)),
                                Padding(
                                    padding:
                                        getPadding(left: 18, top: 4, bottom: 3),
                                    child: Text(
                                        "Arrives by April 3 to April 9th",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtAbhayaLibreMedium13Orange70002))
                              ]))),
                      Container(
                          margin: getMargin(left: 9, top: 46, right: 10),
                          padding: getPadding(
                              left: 15, top: 10, right: 15, bottom: 10),
                          decoration: AppDecoration.fillGray10004.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding:
                                        getPadding(left: 4, top: 5, bottom: 4),
                                    child: Text("Promo Code",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular13Gray50002)),
                                CustomButton(
                                    height: getVerticalSize(30),
                                    width: getHorizontalSize(60),
                                    text: "Apply",
                                    shape: ButtonShape.RoundedBorder7,
                                    padding: ButtonPadding.PaddingAll6,
                                    fontStyle:
                                        ButtonFontStyle.PoppinsSemiBold11)
                              ])),
                      Spacer(),
                      Padding(
                          padding: getPadding(bottom: 36),
                          child: Text(
                              "Total (1 item) :                                             N3000",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold16Black900))
                    ])),
            bottomNavigationBar: Container(
                height: getVerticalSize(114),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                          onTap: () {
                            onTapButton(context);
                          },
                          child: Container(
                              height: getVerticalSize(59),
                              width: getHorizontalSize(149),
                              margin: getMargin(right: 39),
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: EdgeInsets.all(0),
                                            color: ColorConstant.black900,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder28),
                                            child: Container(
                                                height: getVerticalSize(32),
                                                width: getHorizontalSize(18),
                                                decoration: AppDecoration
                                                    .fillBlack900
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder28),
                                                child: Stack(children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgUserWhiteA700,
                                                      height:
                                                          getVerticalSize(32),
                                                      width:
                                                          getHorizontalSize(18),
                                                      alignment:
                                                          Alignment.center)
                                                ])))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                            width: getHorizontalSize(87),
                                            child: Text("Proceed to Checkout",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsSemiBold16)))
                                  ])))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          height: getVerticalSize(61),
                          width: double.maxFinite,
                          decoration:
                              BoxDecoration(color: ColorConstant.black900)))
                ]))));
  }

  onTapButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.checkoutAddaddressScreen);
  }
}
