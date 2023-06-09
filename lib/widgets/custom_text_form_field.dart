import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.autofocus = false,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? autofocus;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        autofocus: autofocus!,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.PoppinsSemiBold12:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        );
      case TextFormFieldFontStyle.PoppinsRegular12:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.RobotoRegular16:
        return TextStyle(
          color: ColorConstant.gray500,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.PoppinsMedium16:
        return TextStyle(
          color: ColorConstant.gray5004,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case TextFormFieldFontStyle.AbhayaLibreMedium15:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Abhaya Libre Medium',
          fontWeight: FontWeight.w500,
        );
      case TextFormFieldFontStyle.RobotoRegular15:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.PromptRegular14:
        return TextStyle(
          color: ColorConstant.gray90008,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Prompt',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.AbhayaLibreMedium15Bluegray40001:
        return TextStyle(
          color: ColorConstant.blueGray40001,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Abhaya Libre Medium',
          fontWeight: FontWeight.w500,
        );
      case TextFormFieldFontStyle.PoppinsSemiBold17:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Abhaya Libre Medium',
          fontWeight: FontWeight.w500,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.RoundedBorder14:
        return BorderRadius.circular(
          getHorizontalSize(
            14.00,
          ),
        );
      case TextFormFieldShape.RoundedBorder20:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
      case TextFormFieldShape.CircleBorder28:
        return BorderRadius.circular(
          getHorizontalSize(
            28.00,
          ),
        );
      case TextFormFieldShape.RoundedBorder2:
        return BorderRadius.circular(
          getHorizontalSize(
            2.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray40059:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.UnderLineWhiteA700:
        return UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.whiteA700,
          ),
        );
      case TextFormFieldVariant.FillBluegray10067:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.OutlineBlack90003:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.black90003,
            width: 1,
          ),
        );
      case TextFormFieldVariant.OutlineBlack90006:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.black90006,
            width: 1,
          ),
        );
      case TextFormFieldVariant.FillBluegray9007f:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.OutlineBlack90003_1:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.black90003,
            width: 1,
          ),
        );
      case TextFormFieldVariant.OutlineBlack90005:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.black90005,
            width: 1,
          ),
        );
      case TextFormFieldVariant.OutlineBlack90006_1:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.black90006,
            width: 1,
          ),
        );
      case TextFormFieldVariant.OutlineBlack90008:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.black90008,
            width: 1,
          ),
        );
      case TextFormFieldVariant.OutlineBlack90026:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray40059:
        return ColorConstant.gray900;
      case TextFormFieldVariant.FillBluegray10067:
        return ColorConstant.blueGray10067;
      case TextFormFieldVariant.OutlineBlack90003:
        return ColorConstant.blueGray90002;
      case TextFormFieldVariant.OutlineBlack90006:
        return ColorConstant.gray90007;
      case TextFormFieldVariant.FillBluegray9007f:
        return ColorConstant.blueGray9007f;
      case TextFormFieldVariant.OutlineBlack90003_1:
        return ColorConstant.whiteA700;
      case TextFormFieldVariant.OutlineBlack90005:
        return ColorConstant.whiteA700;
      case TextFormFieldVariant.OutlineBlack90006_1:
        return ColorConstant.whiteA700;
      case TextFormFieldVariant.OutlineBlack90008:
        return ColorConstant.whiteA700;
      case TextFormFieldVariant.OutlineBlack90026:
        return ColorConstant.whiteA700;
      default:
        return ColorConstant.gray800;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray40059:
        return true;
      case TextFormFieldVariant.UnderLineWhiteA700:
        return false;
      case TextFormFieldVariant.FillBluegray10067:
        return true;
      case TextFormFieldVariant.OutlineBlack90003:
        return true;
      case TextFormFieldVariant.OutlineBlack90006:
        return true;
      case TextFormFieldVariant.FillBluegray9007f:
        return true;
      case TextFormFieldVariant.OutlineBlack90003_1:
        return true;
      case TextFormFieldVariant.OutlineBlack90005:
        return true;
      case TextFormFieldVariant.OutlineBlack90006_1:
        return true;
      case TextFormFieldVariant.OutlineBlack90008:
        return true;
      case TextFormFieldVariant.OutlineBlack90026:
        return true;
      case TextFormFieldVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT15:
        return getPadding(
          left: 12,
          top: 15,
          right: 12,
          bottom: 15,
        );
      case TextFormFieldPadding.PaddingT26:
        return getPadding(
          left: 12,
          top: 26,
          right: 12,
          bottom: 26,
        );
      case TextFormFieldPadding.PaddingT19:
        return getPadding(
          left: 16,
          top: 19,
          right: 16,
          bottom: 19,
        );
      case TextFormFieldPadding.PaddingT13:
        return getPadding(
          left: 13,
          top: 13,
          bottom: 13,
        );
      case TextFormFieldPadding.PaddingT30:
        return getPadding(
          left: 11,
          top: 30,
          right: 11,
          bottom: 30,
        );
      case TextFormFieldPadding.PaddingT30_1:
        return getPadding(
          left: 14,
          top: 30,
          right: 14,
          bottom: 30,
        );
      default:
        return getPadding(
          left: 8,
          top: 8,
          bottom: 8,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder10,
  RoundedBorder14,
  RoundedBorder20,
  CircleBorder28,
  RoundedBorder2,
}

enum TextFormFieldPadding {
  PaddingT8,
  PaddingT15,
  PaddingT26,
  PaddingT19,
  PaddingT13,
  PaddingT30,
  PaddingT30_1,
}

enum TextFormFieldVariant {
  None,
  FillGray800,
  OutlineGray40059,
  UnderLineWhiteA700,
  FillBluegray10067,
  OutlineBlack90003,
  OutlineBlack90006,
  FillBluegray9007f,
  OutlineBlack90003_1,
  OutlineBlack90005,
  OutlineBlack90006_1,
  OutlineBlack90008,
  OutlineBlack90026,
}

enum TextFormFieldFontStyle {
  AbhayaLibreMedium14,
  PoppinsSemiBold12,
  PoppinsRegular12,
  RobotoRegular16,
  PoppinsMedium16,
  AbhayaLibreMedium15,
  RobotoRegular15,
  PromptRegular14,
  AbhayaLibreMedium15Bluegray40001,
  PoppinsSemiBold17,
}
