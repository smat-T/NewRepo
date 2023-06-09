import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:socialapp/core/app_export.dart';
import 'package:socialapp/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber({
    required this.country,
    required this.onTap,
    required this.controller,
  });

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            _openCountryPicker(context);
          },
          child: Container(
            decoration: BoxDecoration(
              color: ColorConstant.whiteA700,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  2,
                ),
              ),
              border: Border.all(
                color: ColorConstant.black90004,
                width: getHorizontalSize(
                  1,
                ),
                strokeAlign: strokeAlignCenter,
              ),
            ),
            child: Row(
              children: [
                Container(
                  height: getVerticalSize(
                    20,
                  ),
                  width: getHorizontalSize(
                    28,
                  ),
                  margin: getMargin(
                    left: 16,
                    top: 18,
                    bottom: 18,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        2,
                      ),
                    ),
                    child: CountryPickerUtils.getDefaultFlagImage(
                      country,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 12,
                    top: 19,
                    right: 24,
                    bottom: 18,
                  ),
                  child: Text(
                    "+${country.phoneCode}",
                    style: AppStyle.txtAbhayaLibreMedium15Gray90005,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: CustomTextFormField(
            width: getHorizontalSize(
              226,
            ),
            focusNode: FocusNode(),
            autofocus: true,
            controller: controller,
            hintText: "Phone Number*",
            margin: getMargin(
              left: 8,
            ),
            variant: TextFormFieldVariant.OutlineBlack90005,
            shape: TextFormFieldShape.RoundedBorder2,
            padding: TextFormFieldPadding.PaddingT19,
            fontStyle: TextFormFieldFontStyle.AbhayaLibreMedium15Bluegray40001,
            textInputType: TextInputType.phone,
          ),
        ),
      ],
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: getHorizontalSize(10),
            ),
            width: getHorizontalSize(60.0),
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: getFontSize(14)),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: getFontSize(14)),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: getFontSize(14)),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: getFontSize(14))),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
