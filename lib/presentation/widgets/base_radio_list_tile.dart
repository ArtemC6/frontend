import 'package:flutter/material.dart';
import 'package:frontend/presentation/resources/app_colors.dart';
import 'package:frontend/presentation/resources/app_text_style.dart';

class BaseRadioListTile extends StatefulWidget {
  final Map<String, String> values; // Map вместо List
  final String? initialValue;
  final Function(String value) onChanged;

  BaseRadioListTile({
    super.key,
    required this.values,
    this.initialValue,
    required this.onChanged,
  }) : assert(values.isNotEmpty, 'The values should not be empty.');

  @override
  State<BaseRadioListTile> createState() => _BaseRadioListTileState();
}

class _BaseRadioListTileState extends State<BaseRadioListTile> {
  String? _choice;

  @override
  void initState() {
    super.initState();
    _choice = widget.initialValue ?? widget.values.keys.first;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.values.entries.map((entry) {
        return RadioListTile<String>(
          groupValue: _choice,
          contentPadding: EdgeInsets.zero,
          onChanged: (value) => setState(() {
            _choice = value;
            if (value != null) {
              widget.onChanged(value);
            }
          }),
          dense: true,
          activeColor: AppColors.primaryTextColor,
          fillColor: const WidgetStatePropertyAll<Color>(
            AppColors.primaryTextColor,
          ),
          title: Text(
            entry.value, // Отображаем значение из Map
            style: AppTextStyle.bodyMedium.copyWith(
              letterSpacing: -1,
            ),
          ),
          value: entry.key, // Используем ключ как значение радио-кнопки
        );
      }).toList(),
    );
  }
}
