import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:frontend/presentation/helpers/phone_number_formatter.dart';
import 'package:frontend/presentation/resources/app_colors.dart';
import 'package:frontend/presentation/resources/app_consts.dart';
import 'package:frontend/presentation/resources/app_text_style.dart';

class BasePhoneNumberField extends StatefulWidget {
  final String? title;
  final Function(String value) onCodeChanged;
  final TextEditingController numberController;
  final FocusNode? focusNode;
  const BasePhoneNumberField({
    super.key,
    this.title,
    required this.onCodeChanged,
    required this.numberController,
    this.focusNode,
  });

  @override
  State<BasePhoneNumberField> createState() => _BasePhoneNumberFieldState();
}

class _BasePhoneNumberFieldState extends State<BasePhoneNumberField> {
  String? selectedCountyCode;
  @override
  void initState() {
    selectedCountyCode = AppConsts.defaultPhoneCountryCode;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        if (widget.title != null)
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.title ?? '',
              textAlign: TextAlign.start,
              style: AppTextStyle.bodyMedium.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        TextField(
          focusNode: widget.focusNode,
          controller: widget.numberController,
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          inputFormatters: [
            PhoneNumberFormatter.formatter,
          ],
          decoration: InputDecoration(
              prefixIcon: _buildCodePicker(),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              filled: true,
              fillColor: AppColors.backgroundColor,
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
                borderSide: BorderSide(
                  color: AppColors.primaryColor,
                ),
              )),
          // style: AppTextStyle.bodySmall.copyWith(
          //   letterSpacing: 0.0,
          // ),
          keyboardType: const TextInputType.numberWithOptions(signed: true),
          cursorColor: AppColors.primaryTextColor,
        ),
      ],
    );
  }

  void setSelectedCountryCode(String? value) => setState(() {
        selectedCountyCode = value;
        if (value != null) {
          widget.onCodeChanged(value);
        }
      });

  Widget _buildCodePicker() {
    return CountryCodePicker(
      onChanged: (value) => setSelectedCountryCode(value.code),
      initialSelection: AppConsts.defaultPhoneCountryCode,
      builder: (country) {
        if (country == null) {
          return const SizedBox();
        }
        return Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                width: 20,
                country.flagUri!,
                package: 'country_code_picker',
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  country.dialCode!,
                  style: AppTextStyle.bodyMedium.copyWith(
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
              const Icon(
                Icons.arrow_drop_down,
                color: AppColors.primaryTextColor,
              ),
            ],
          ),
        );
      },
      backgroundColor: AppColors.backgroundColor,
      textStyle: AppTextStyle.bodySmall.copyWith(
        letterSpacing: 0.0,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      dialogBackgroundColor: AppColors.backgroundColor,
      dialogTextStyle: AppTextStyle.bodySmall.copyWith(
        letterSpacing: 0.0,
      ),
      searchStyle: AppTextStyle.bodySmall.copyWith(
        fontWeight: FontWeight.w500,
        letterSpacing: 0.0,
      ),
      searchPadding: const EdgeInsets.only(
        bottom: 20,
        left: 20,
        right: 20,
      ),
      barrierColor: Colors.transparent,
      flagWidth: 20,
      alignLeft: false,
      showDropDownButton: true,
      margin: const EdgeInsets.only(right: 5),
      padding: const EdgeInsets.only(right: 12, left: 0),
    );
  }
}
