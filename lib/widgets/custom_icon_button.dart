import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        visualDensity: VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll11:
        return getPadding(
          all: 11,
        );
      case IconButtonPadding.PaddingAll8:
        return getPadding(
          all: 8,
        );
      case IconButtonPadding.PaddingAll16:
        return getPadding(
          all: 16,
        );
      default:
        return getPadding(
          all: 4,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillGray5001:
        return ColorConstant.gray5001;
      case IconButtonVariant.FillAmberA200:
        return ColorConstant.amberA200;
      case IconButtonVariant.FillOrangeA70001:
        return ColorConstant.orangeA70001;
      case IconButtonVariant.FillBlack900:
        return ColorConstant.black900;
      case IconButtonVariant.FillOrange6007f:
        return ColorConstant.orange6007f;
      case IconButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case IconButtonVariant.GradientAmberA70001DeeporangeA40001:
      case IconButtonVariant.OutlineOrange70087:
        return null;
      default:
        return ColorConstant.orange5007f;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.OutlineOrange70087:
        return Border.all(
          color: ColorConstant.orange70087,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.FillOrange5007f:
      case IconButtonVariant.FillGray5001:
      case IconButtonVariant.GradientAmberA70001DeeporangeA40001:
      case IconButtonVariant.FillAmberA200:
      case IconButtonVariant.FillOrangeA70001:
      case IconButtonVariant.FillBlack900:
      case IconButtonVariant.FillOrange6007f:
      case IconButtonVariant.FillWhiteA700:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.CircleBorder30:
        return BorderRadius.circular(
          getHorizontalSize(
            30.00,
          ),
        );
      case IconButtonShape.CircleBorder15:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
      case IconButtonShape.CircleBorder24:
        return BorderRadius.circular(
          getHorizontalSize(
            24.00,
          ),
        );
      case IconButtonShape.CircleBorder10:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            18.00,
          ),
        );
    }
  }

  _setGradient() {
    switch (variant) {
      case IconButtonVariant.GradientAmberA70001DeeporangeA40001:
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
            ColorConstant.amberA70001,
            ColorConstant.deepOrangeA40001,
          ],
        );
      case IconButtonVariant.FillOrange5007f:
      case IconButtonVariant.FillGray5001:
      case IconButtonVariant.OutlineOrange70087:
      case IconButtonVariant.FillAmberA200:
      case IconButtonVariant.FillOrangeA70001:
      case IconButtonVariant.FillBlack900:
      case IconButtonVariant.FillOrange6007f:
      case IconButtonVariant.FillWhiteA700:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonShape {
  CircleBorder18,
  CircleBorder30,
  CircleBorder15,
  CircleBorder24,
  CircleBorder10,
}

enum IconButtonPadding {
  PaddingAll4,
  PaddingAll11,
  PaddingAll8,
  PaddingAll16,
}

enum IconButtonVariant {
  FillOrange5007f,
  FillGray5001,
  GradientAmberA70001DeeporangeA40001,
  OutlineOrange70087,
  FillAmberA200,
  FillOrangeA70001,
  FillBlack900,
  FillOrange6007f,
  FillWhiteA700,
}
