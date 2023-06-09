import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/app_bar/appbar_image.dart';
import 'package:socialapp/widgets/app_bar/custom_app_bar.dart';
import 'package:socialapp/widgets/custom_button.dart';
import 'package:socialapp/widgets/custom_checkbox.dart';
import 'package:socialapp/widgets/custom_drop_down.dart';
import 'package:socialapp/widgets/custom_phone_number.dart';
import 'package:socialapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CheckoutAddaddressScreen extends StatelessWidget {
  TextEditingController surnameController = TextEditingController();

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('234');

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  bool isCheckbox = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(91),
                leadingWidth: 25,
                leading: AppbarImage(
                    height: getVerticalSize(16),
                    width: getHorizontalSize(9),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 20, bottom: 20),
                    onTap: () {
                      onTapArrowleft2(context);
                    }),
                centerTitle: true,
                title: Text("Add Address",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtAbhayaLibreMedium18Gray90005),
                styleType: Style.bgFillWhiteA700),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: getPadding(top: 3),
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 16),
                                  child: Text("*Required fields.",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtAbhayaLibreMedium11Bluegray40001
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2)))),
                              Padding(
                                  padding: getPadding(left: 16, top: 16),
                                  child: Row(children: [
                                    Container(
                                        width: getSize(32),
                                        padding: getPadding(
                                            left: 11,
                                            top: 4,
                                            right: 11,
                                            bottom: 4),
                                        decoration: AppDecoration
                                            .txtOutlineOrange500021
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder17),
                                        child: Text("1",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtAbhayaLibreMedium18Orange70002
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2)))),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 8, bottom: 6),
                                        child: Text("Recipents Information",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtAbhayaLibreMedium14Gray90005
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2))))
                                  ])),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  autofocus: true,
                                  controller: surnameController,
                                  hintText: "Name and Surname*",
                                  margin:
                                      getMargin(left: 16, top: 16, right: 16),
                                  variant:
                                      TextFormFieldVariant.OutlineBlack90003_1,
                                  shape: TextFormFieldShape.RoundedBorder2,
                                  padding: TextFormFieldPadding.PaddingT19,
                                  fontStyle: TextFormFieldFontStyle
                                      .AbhayaLibreMedium15Bluegray40001,
                                  alignment: Alignment.center),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 8, right: 16),
                                  child: CustomPhoneNumber(
                                      country: selectedCountry,
                                      controller: phoneNumberController,
                                      onTap: (Country country) {
                                        selectedCountry = country;
                                      })),
                              Padding(
                                  padding: getPadding(left: 16, top: 8),
                                  child: Text(
                                      "For shipping related questions only.",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtAbhayaLibreMedium11Bluegray40001
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  autofocus: true,
                                  controller: emailController,
                                  hintText: "E-mail Address*",
                                  margin:
                                      getMargin(left: 16, top: 15, right: 16),
                                  variant:
                                      TextFormFieldVariant.OutlineBlack90006_1,
                                  shape: TextFormFieldShape.RoundedBorder2,
                                  padding: TextFormFieldPadding.PaddingT19,
                                  fontStyle: TextFormFieldFontStyle
                                      .AbhayaLibreMedium15Bluegray40001,
                                  textInputType: TextInputType.emailAddress,
                                  alignment: Alignment.center),
                              Padding(
                                  padding: getPadding(left: 17, top: 8),
                                  child: Text(
                                      "This address will be used to send you order and bill details.",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtAbhayaLibreMedium11Bluegray40001
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2)))),
                              Padding(
                                  padding: getPadding(left: 16, top: 31),
                                  child: Row(children: [
                                    Container(
                                        width: getSize(32),
                                        padding: getPadding(
                                            left: 11,
                                            top: 4,
                                            right: 11,
                                            bottom: 4),
                                        decoration: AppDecoration
                                            .txtOutlineOrange500021
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder17),
                                        child: Text("2",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtAbhayaLibreMedium18Orange50002
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2)))),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 8, bottom: 6),
                                        child: Text("Shipping Address",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtAbhayaLibreMedium14Gray90005
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2))))
                                  ])),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  autofocus: true,
                                  controller: addressController,
                                  hintText: "Address Title (Optional)",
                                  margin:
                                      getMargin(left: 16, top: 16, right: 20),
                                  variant:
                                      TextFormFieldVariant.OutlineBlack90008,
                                  shape: TextFormFieldShape.RoundedBorder2,
                                  padding: TextFormFieldPadding.PaddingT19,
                                  fontStyle: TextFormFieldFontStyle
                                      .AbhayaLibreMedium15Bluegray40001,
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.center),
                              Padding(
                                  padding: getPadding(left: 17, top: 8),
                                  child: Text(
                                      "For estimating if the place is opened or closed on the weekends.",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtAbhayaLibreMedium11Bluegray40001
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2)))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      margin: getMargin(
                                          left: 16, top: 16, right: 16),
                                      padding: getPadding(
                                          left: 16,
                                          top: 10,
                                          right: 16,
                                          bottom: 10),
                                      decoration: AppDecoration.outlineBlack900
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder2),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("Adress*",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtAbhayaLibreMedium15Bluegray40001),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 5),
                                                      child: Text(
                                                          "Street, apartment name etc.",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtAbhayaLibreMedium11Bluegray40001
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.2))))
                                                ]),
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgIconautodetect,
                                                height: getSize(24),
                                                width: getSize(24),
                                                margin: getMargin(
                                                    top: 5, bottom: 7))
                                          ]))),
                              Padding(
                                  padding: getPadding(left: 16, top: 8),
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgGroup4copy22,
                                        height: getSize(16),
                                        width: getSize(16)),
                                    Padding(
                                        padding: getPadding(left: 7),
                                        child: Text(
                                            "Street Address 2 (Optional)",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtAbhayaLibreMedium14Orange70002))
                                  ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: getMargin(top: 15),
                                      color: ColorConstant.whiteA700,
                                      shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              color: ColorConstant.black90009,
                                              width: getHorizontalSize(1)),
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder2),
                                      child: Container(
                                          height: getVerticalSize(56),
                                          width: getHorizontalSize(343),
                                          decoration: AppDecoration
                                              .outlineBlack90009
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder2),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 16),
                                                        child: Text("City",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtAbhayaLibreMedium15Bluegray40001))),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Container(
                                                        padding: getPadding(
                                                            left: 16,
                                                            top: 18,
                                                            right: 16,
                                                            bottom: 18),
                                                        decoration: AppDecoration
                                                            .outlineBlack90009
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder2),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              1),
                                                                  child: Text(
                                                                      "City*",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtAbhayaLibreMedium15Bluegray40001)),
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgArrowdown,
                                                                  height:
                                                                      getSize(
                                                                          16),
                                                                  width:
                                                                      getSize(
                                                                          16),
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              1,
                                                                          bottom:
                                                                              1))
                                                            ])))
                                              ])))),
                              CustomDropDown(
                                  focusNode: FocusNode(),
                                  autofocus: true,
                                  icon: Container(
                                      margin: getMargin(left: 30, right: 16),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownOrange600)),
                                  hintText: "County*",
                                  margin:
                                      getMargin(left: 16, top: 8, right: 16),
                                  alignment: Alignment.center,
                                  items: dropdownItemList,
                                  onChanged: (value) {}),
                              Padding(
                                  padding: getPadding(left: 16, top: 32),
                                  child: Row(children: [
                                    Container(
                                        width: getSize(32),
                                        padding: getPadding(
                                            left: 11,
                                            top: 3,
                                            right: 11,
                                            bottom: 3),
                                        decoration: AppDecoration
                                            .txtOutlineOrange70002
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder17),
                                        child: Text("3",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtAbhayaLibreMedium18Orange50002
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2)))),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 8, bottom: 6),
                                        child: Text("Billing Information",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtAbhayaLibreMedium14Gray90005
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2))))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 16, top: 24),
                                  child: Text("Billing Address*",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtAbhayaLibreMedium14Gray90005
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2)))),
                              CustomCheckbox(
                                  text: "Same as delivery address.",
                                  value: isCheckbox,
                                  margin: getMargin(left: 16, top: 15),
                                  fontStyle:
                                      CheckboxFontStyle.AbhayaLibreMedium14,
                                  onChange: (value) {
                                    isCheckbox = value;
                                  }),
                              Padding(
                                  padding:
                                      getPadding(left: 6, top: 23, right: 7),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomButton(
                                            height: getVerticalSize(51),
                                            width: getHorizontalSize(149),
                                            text: "Cancel",
                                            padding: ButtonPadding.PaddingT10,
                                            fontStyle: ButtonFontStyle
                                                .PoppinsSemiBold20,
                                            prefixWidget: Container(
                                                margin: getMargin(right: 11),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgMobile))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapButton(context);
                                            },
                                            child: Container(
                                                margin: getMargin(top: 1),
                                                padding: getPadding(
                                                    left: 38, right: 38),
                                                decoration: AppDecoration
                                                    .fillBlack900
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder25),
                                                child: Row(children: [
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgCar,
                                                      height:
                                                          getVerticalSize(16),
                                                      width:
                                                          getHorizontalSize(15),
                                                      margin: getMargin(
                                                          top: 17, bottom: 17)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 39, top: 13),
                                                      child: Text("Pay",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsSemiBold24))
                                                ])))
                                      ])),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgRectangle199461x375,
                                  height: getVerticalSize(61),
                                  width: getHorizontalSize(375),
                                  margin: getMargin(top: 18))
                            ]))))));
  }

  onTapButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.checkoutScreen);
  }

  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}
