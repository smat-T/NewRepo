import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonChildWidget(),
      ),
    );
  }

  _buildButtonChildWidget() {
    if (checkGradient()) {
      return Container(
        width: width ?? double.maxFinite,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: _buildButtonWithOrWithoutIcon(),
      );
    } else {
      return _buildButtonWithOrWithoutIcon();
    }
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildDecoration() {
    return BoxDecoration(
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
      boxShadow: _setBoxShadow(),
    );
  }

  _buildTextButtonStyle() {
    if (checkGradient()) {
      return TextButton.styleFrom(
        padding: EdgeInsets.zero,
      );
    } else {
      return TextButton.styleFrom(
        fixedSize: Size(
          width ?? double.maxFinite,
          height ?? getVerticalSize(40),
        ),
        padding: _setPadding(),
        backgroundColor: _setColor(),
        side: _setTextButtonBorder(),
        shadowColor: _setTextButtonShadowColor(),
        shape: RoundedRectangleBorder(
          borderRadius: _setBorderRadius(),
        ),
      );
    }
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingT9:
        return getPadding(
          left: 5,
          top: 9,
          bottom: 9,
        );
      case ButtonPadding.PaddingAll6:
        return getPadding(
          all: 6,
        );
      case ButtonPadding.PaddingAll10:
        return getPadding(
          all: 10,
        );
      case ButtonPadding.PaddingAll19:
        return getPadding(
          all: 19,
        );
      case ButtonPadding.PaddingT13:
        return getPadding(
          top: 13,
          right: 13,
          bottom: 13,
        );
      case ButtonPadding.PaddingT10:
        return getPadding(
          top: 10,
          right: 10,
          bottom: 10,
        );
      case ButtonPadding.PaddingT30:
        return getPadding(
          left: 16,
          top: 30,
          right: 16,
          bottom: 30,
        );
      default:
        return getPadding(
          all: 13,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillGray10001:
        return ColorConstant.gray10001;
      case ButtonVariant.FillGray800:
        return ColorConstant.gray800;
      case ButtonVariant.FillOrange50002:
        return ColorConstant.orange50002;
      case ButtonVariant.OutlineBlack90005:
        return ColorConstant.gray90006;
      case ButtonVariant.FillAmberA400:
        return ColorConstant.amberA400;
      case ButtonVariant.OutlinePink300:
        return ColorConstant.whiteA700;
      case ButtonVariant.GradientAmberA70001Amber600:
      case ButtonVariant.GradientDeeporange300Yellow900:
      case ButtonVariant.GradientOrangeA70001Orange600:
      case ButtonVariant.GradientAmber600Orange70002:
      case ButtonVariant.GradientOrangeA70001Orange50004:
      case ButtonVariant.GradientOrange70002DeeporangeA400:
      case ButtonVariant.GradientYellowA700Orange50002:
      case ButtonVariant.GradientAmberA70001YellowA400:
      case ButtonVariant.OutlineBluegray50:
        return null;
      default:
        return ColorConstant.black900;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineBlack90005:
        return BorderSide(
          color: ColorConstant.black90005,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBluegray50:
        return BorderSide(
          color: ColorConstant.blueGray50,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlinePink300:
        return BorderSide(
          color: ColorConstant.pink300,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.GradientAmberA70001Amber600:
      case ButtonVariant.GradientDeeporange300Yellow900:
      case ButtonVariant.FillGray10001:
      case ButtonVariant.FillGray800:
      case ButtonVariant.GradientOrangeA70001Orange600:
      case ButtonVariant.GradientAmber600Orange70002:
      case ButtonVariant.GradientOrangeA70001Orange50004:
      case ButtonVariant.GradientOrange70002DeeporangeA400:
      case ButtonVariant.GradientYellowA700Orange50002:
      case ButtonVariant.GradientAmberA70001YellowA400:
      case ButtonVariant.FillOrange50002:
      case ButtonVariant.FillAmberA400:
      case ButtonVariant.FillBlack900:
        return null;
      default:
        return null;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlinePink300:
        return ColorConstant.black90026;
      case ButtonVariant.GradientAmberA70001Amber600:
      case ButtonVariant.GradientDeeporange300Yellow900:
      case ButtonVariant.FillGray10001:
      case ButtonVariant.FillGray800:
      case ButtonVariant.GradientOrangeA70001Orange600:
      case ButtonVariant.GradientAmber600Orange70002:
      case ButtonVariant.GradientOrangeA70001Orange50004:
      case ButtonVariant.GradientOrange70002DeeporangeA400:
      case ButtonVariant.GradientYellowA700Orange50002:
      case ButtonVariant.GradientAmberA70001YellowA400:
      case ButtonVariant.FillOrange50002:
      case ButtonVariant.OutlineBlack90005:
      case ButtonVariant.FillAmberA400:
      case ButtonVariant.FillBlack900:
      case ButtonVariant.OutlineBluegray50:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder20:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
      case ButtonShape.RoundedBorder10:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
      case ButtonShape.RoundedBorder30:
        return BorderRadius.circular(
          getHorizontalSize(
            30.00,
          ),
        );
      case ButtonShape.CircleBorder15:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
      case ButtonShape.RoundedBorder2:
        return BorderRadius.circular(
          getHorizontalSize(
            2.00,
          ),
        );
      case ButtonShape.RoundedBorder7:
        return BorderRadius.circular(
          getHorizontalSize(
            7.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            27.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.AbrilFatfaceRegular18:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Abril Fatface',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.AbhayaLibreMedium16:
        return TextStyle(
          color: ColorConstant.gray40001,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Abhaya Libre Medium',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.AbrilFatfaceRegular20:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Abril Fatface',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.AbhayaLibreMedium12:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Abhaya Libre Medium',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.AbrilFatfaceRegular16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Abril Fatface',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.AbrilFatfaceRegular24:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            24,
          ),
          fontFamily: 'Abril Fatface',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.RobotoRomanMedium11:
        return TextStyle(
          color: ColorConstant.black90001,
          fontSize: getFontSize(
            11,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.RobotoRomanBold14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.AbhayaLibreMedium15:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Abhaya Libre Medium',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.AbrilFatfaceRegular24Black900:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            24,
          ),
          fontFamily: 'Abril Fatface',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.PoppinsBold10:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.PoppinsSemiBold16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.PoppinsRegular14:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.AbhayaLibreMedium13:
        return TextStyle(
          color: ColorConstant.gray90005,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Abhaya Libre Medium',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.PoppinsSemiBold11:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            11,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.PoppinsSemiBold20:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.PoppinsSemiBold17:
        return TextStyle(
          color: ColorConstant.pink300,
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
            16,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        );
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineBlack90005:
        return Border.all(
          color: ColorConstant.black90005,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBluegray50:
        return Border.all(
          color: ColorConstant.blueGray50,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlinePink300:
        return Border.all(
          color: ColorConstant.pink300,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.GradientAmberA70001Amber600:
      case ButtonVariant.GradientDeeporange300Yellow900:
      case ButtonVariant.FillGray10001:
      case ButtonVariant.FillGray800:
      case ButtonVariant.GradientOrangeA70001Orange600:
      case ButtonVariant.GradientAmber600Orange70002:
      case ButtonVariant.GradientOrangeA70001Orange50004:
      case ButtonVariant.GradientOrange70002DeeporangeA400:
      case ButtonVariant.GradientYellowA700Orange50002:
      case ButtonVariant.GradientAmberA70001YellowA400:
      case ButtonVariant.FillOrange50002:
      case ButtonVariant.FillAmberA400:
      case ButtonVariant.FillBlack900:
        return null;
      default:
        return null;
    }
  }

  checkGradient() {
    switch (variant) {
      case ButtonVariant.GradientAmberA70001Amber600:
      case ButtonVariant.GradientDeeporange300Yellow900:
      case ButtonVariant.GradientOrangeA70001Orange600:
      case ButtonVariant.GradientAmber600Orange70002:
      case ButtonVariant.GradientOrangeA70001Orange50004:
      case ButtonVariant.GradientOrange70002DeeporangeA400:
      case ButtonVariant.GradientYellowA700Orange50002:
      case ButtonVariant.GradientAmberA70001YellowA400:
        return true;
      default:
        return false;
    }
  }

  _setGradient() {
    switch (variant) {
      case ButtonVariant.GradientAmberA70001Amber600:
        return LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.amberA70001,
            ColorConstant.amber600,
          ],
        );
      case ButtonVariant.GradientDeeporange300Yellow900:
        return LinearGradient(
          begin: Alignment(
            1,
            1,
          ),
          end: Alignment(
            0,
            0,
          ),
          colors: [
            ColorConstant.deepOrange300,
            ColorConstant.orange50001,
            ColorConstant.yellow900,
          ],
        );
      case ButtonVariant.GradientOrangeA70001Orange600:
        return LinearGradient(
          begin: Alignment(
            1,
            1,
          ),
          end: Alignment(
            0,
            0,
          ),
          colors: [
            ColorConstant.orangeA70001,
            ColorConstant.orange600,
          ],
        );
      case ButtonVariant.GradientAmber600Orange70002:
        return LinearGradient(
          begin: Alignment(
            1,
            0,
          ),
          end: Alignment(
            0,
            0,
          ),
          colors: [
            ColorConstant.amber600,
            ColorConstant.orange70002,
            ColorConstant.orange70002,
          ],
        );
      case ButtonVariant.GradientOrangeA70001Orange50004:
        return LinearGradient(
          begin: Alignment(
            1,
            1,
          ),
          end: Alignment(
            0,
            0,
          ),
          colors: [
            ColorConstant.orangeA70001,
            ColorConstant.orange50002,
            ColorConstant.orange50004,
          ],
        );
      case ButtonVariant.GradientOrange70002DeeporangeA400:
        return LinearGradient(
          begin: Alignment(
            1,
            1,
          ),
          end: Alignment(
            0,
            0,
          ),
          colors: [
            ColorConstant.orange70002,
            ColorConstant.deepOrangeA400,
          ],
        );
      case ButtonVariant.GradientYellowA700Orange50002:
        return LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.yellowA700,
            ColorConstant.orange50002,
          ],
        );
      case ButtonVariant.GradientAmberA70001YellowA400:
        return LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.amberA70001,
            ColorConstant.yellowA400,
          ],
        );
      case ButtonVariant.FillGray10001:
      case ButtonVariant.FillGray800:
      case ButtonVariant.FillOrange50002:
      case ButtonVariant.OutlineBlack90005:
      case ButtonVariant.FillAmberA400:
      case ButtonVariant.FillBlack900:
      case ButtonVariant.OutlineBluegray50:
      case ButtonVariant.OutlinePink300:
        return null;
      default:
        return null;
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.OutlinePink300:
        return [
          BoxShadow(
            color: ColorConstant.black90026,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ];
      case ButtonVariant.GradientAmberA70001Amber600:
      case ButtonVariant.GradientDeeporange300Yellow900:
      case ButtonVariant.FillGray10001:
      case ButtonVariant.FillGray800:
      case ButtonVariant.GradientOrangeA70001Orange600:
      case ButtonVariant.GradientAmber600Orange70002:
      case ButtonVariant.GradientOrangeA70001Orange50004:
      case ButtonVariant.GradientOrange70002DeeporangeA400:
      case ButtonVariant.GradientYellowA700Orange50002:
      case ButtonVariant.GradientAmberA70001YellowA400:
      case ButtonVariant.FillOrange50002:
      case ButtonVariant.OutlineBlack90005:
      case ButtonVariant.FillAmberA400:
      case ButtonVariant.FillBlack900:
      case ButtonVariant.OutlineBluegray50:
        return null;
      default:
        return null;
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder20,
  RoundedBorder27,
  RoundedBorder10,
  RoundedBorder30,
  CircleBorder15,
  RoundedBorder2,
  RoundedBorder7,
}

enum ButtonPadding {
  PaddingAll13,
  PaddingT9,
  PaddingAll6,
  PaddingAll10,
  PaddingAll19,
  PaddingT13,
  PaddingT10,
  PaddingT30,
}

enum ButtonVariant {
  GradientAmberA70001Amber600,
  GradientDeeporange300Yellow900,
  FillGray10001,
  FillGray800,
  GradientOrangeA70001Orange600,
  GradientAmber600Orange70002,
  GradientOrangeA70001Orange50004,
  GradientOrange70002DeeporangeA400,
  GradientYellowA700Orange50002,
  GradientAmberA70001YellowA400,
  FillOrange50002,
  OutlineBlack90005,
  FillAmberA400,
  FillBlack900,
  OutlineBluegray50,
  OutlinePink300,
}

enum ButtonFontStyle {
  PoppinsBold16,
  AbrilFatfaceRegular18,
  AbhayaLibreMedium16,
  AbrilFatfaceRegular20,
  AbhayaLibreMedium12,
  AbrilFatfaceRegular16,
  AbrilFatfaceRegular24,
  RobotoRomanMedium11,
  RobotoRomanBold14,
  AbhayaLibreMedium15,
  AbrilFatfaceRegular24Black900,
  PoppinsBold10,
  PoppinsSemiBold16,
  PoppinsRegular14,
  AbhayaLibreMedium13,
  PoppinsSemiBold11,
  PoppinsSemiBold20,
  PoppinsSemiBold17,
}
