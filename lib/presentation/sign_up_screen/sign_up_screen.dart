import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/custom_button.dart';
import 'package:socialapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  TextEditingController mobilenovalueController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController timezoneController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 13, top: 4, right: 13, bottom: 4),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 7),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(bottom: 110),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color:
                                                    ColorConstant.orange70087,
                                                width: getHorizontalSize(1)),
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder15),
                                        child: Container(
                                            height: getSize(30),
                                            width: getSize(30),
                                            padding: getPadding(all: 1),
                                            decoration: AppDecoration
                                                .outlineOrange70087
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
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
                                        margin: getMargin(left: 56, top: 15))
                                  ])),
                          Container(
                              height: getVerticalSize(379),
                              width: getHorizontalSize(334),
                              margin: getMargin(top: 19, bottom: 5),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                        height: getVerticalSize(49),
                                        width: getHorizontalSize(273),
                                        margin: getMargin(left: 16, top: 74),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray900,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(14)),
                                            boxShadow: [
                                              BoxShadow(
                                                  color:
                                                      ColorConstant.gray40059,
                                                  spreadRadius:
                                                      getHorizontalSize(2),
                                                  blurRadius:
                                                      getHorizontalSize(2),
                                                  offset: Offset(3, 3))
                                            ]))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        padding: getPadding(
                                            left: 9,
                                            top: 16,
                                            right: 9,
                                            bottom: 16),
                                        decoration: AppDecoration.outlineGray400
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder28),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 25, top: 3),
                                                  child: Text("Sign Up",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtAbhayaLibreMedium20
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      1.3)))),
                                              Container(
                                                  height: getVerticalSize(170),
                                                  width: getHorizontalSize(273),
                                                  margin: getMargin(
                                                      left: 16, top: 9),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                      "Mobile no",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtPoppinsSemiBold10
                                                                          .copyWith(
                                                                              letterSpacing: getHorizontalSize(0.65))),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              59),
                                                                      child: Text(
                                                                          "Email Id",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtPoppinsSemiBold10
                                                                              .copyWith(letterSpacing: getHorizontalSize(0.65)))),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              1,
                                                                          top:
                                                                              66),
                                                                      child: Text(
                                                                          "Password",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtPoppinsSemiBold10
                                                                              .copyWith(letterSpacing: getHorizontalSize(0.65))))
                                                                ])),
                                                        CustomTextFormField(
                                                            width:
                                                                getHorizontalSize(
                                                                    273),
                                                            focusNode:
                                                                FocusNode(),
                                                            autofocus: true,
                                                            controller:
                                                                mobilenovalueController,
                                                            hintText:
                                                                "09053467",
                                                            margin: getMargin(
                                                                top: 24),
                                                            variant: TextFormFieldVariant
                                                                .OutlineGray40059,
                                                            shape: TextFormFieldShape
                                                                .RoundedBorder14,
                                                            padding:
                                                                TextFormFieldPadding
                                                                    .PaddingT15,
                                                            fontStyle:
                                                                TextFormFieldFontStyle
                                                                    .PoppinsSemiBold12,
                                                            textInputType:
                                                                TextInputType
                                                                    .phone,
                                                            alignment: Alignment
                                                                .topCenter),
                                                        CustomTextFormField(
                                                            width:
                                                                getHorizontalSize(
                                                                    273),
                                                            focusNode:
                                                                FocusNode(),
                                                            autofocus: true,
                                                            controller:
                                                                emailController,
                                                            hintText:
                                                                "Example@gmail.com",
                                                            margin: getMargin(
                                                                bottom: 25),
                                                            variant:
                                                                TextFormFieldVariant
                                                                    .OutlineGray40059,
                                                            shape: TextFormFieldShape
                                                                .RoundedBorder14,
                                                            padding:
                                                                TextFormFieldPadding
                                                                    .PaddingT15,
                                                            fontStyle:
                                                                TextFormFieldFontStyle
                                                                    .PoppinsSemiBold12,
                                                            textInputType:
                                                                TextInputType
                                                                    .emailAddress,
                                                            alignment: Alignment
                                                                .bottomCenter)
                                                      ])),
                                              CustomTextFormField(
                                                  focusNode: FocusNode(),
                                                  autofocus: true,
                                                  controller:
                                                      timezoneController,
                                                  hintText:
                                                      "Must be atleast 8 characters",
                                                  margin: getMargin(
                                                      left: 16,
                                                      top: 13,
                                                      right: 27),
                                                  variant: TextFormFieldVariant
                                                      .OutlineGray40059,
                                                  shape: TextFormFieldShape
                                                      .RoundedBorder14,
                                                  padding: TextFormFieldPadding
                                                      .PaddingT15,
                                                  fontStyle:
                                                      TextFormFieldFontStyle
                                                          .PoppinsRegular12,
                                                  textInputAction:
                                                      TextInputAction.done),
                                              CustomButton(
                                                  text: "sign up",
                                                  margin: getMargin(top: 22),
                                                  variant: ButtonVariant
                                                      .GradientDeeporange300Yellow900,
                                                  fontStyle: ButtonFontStyle
                                                      .AbrilFatfaceRegular18,
                                                  onTap: () {
                                                    onTapSignup(context);
                                                  })
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                        padding: getPadding(right: 92),
                                        child: Text("Already a user?",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsRegular10
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.65))))),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                        padding: getPadding(right: 61),
                                        child: Text("Login",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular10Orange700
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.65)))))
                              ]))
                        ])))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.verificationCodeScreen);
  }
}
