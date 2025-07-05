import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shmr_finance/utils/strings/s.dart';
import 'package:shmr_finance/utils/strings/strings_provider.dart';

Future<void> shmrShowInputDoubleDialog({
  required BuildContext context,
  required String title,
  String? initialValue,
  bool onlyNumbers = false,
  required void Function(String) onApply,
}) async {
  final TextEditingController _controller = TextEditingController();

  if (initialValue != null) {
    _controller.value = TextEditingValue(text: initialValue);
  }

  final localeProvider = context.read<StringsProvider>();
  final allowedSymbol = localeProvider.isRu
      ? ','
      : localeProvider.isEn
          ? '.'
          : '';

  await showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(title),
        content: TextField(
          controller: _controller,
          keyboardType: onlyNumbers
              ? TextInputType.numberWithOptions(decimal: true)
              : null,
          inputFormatters: onlyNumbers
              ? [
                  if (localeProvider.isEn)
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
                  if (localeProvider.isRu)
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9,]')),
                ]
              : null,
          decoration: InputDecoration(
            hintText: title,
          ),
          autofocus: true,
          // эта страшила контролирует количество точек или запятых
          onChanged: (value) {
            if (value == '00') {
              _controller.value = TextEditingValue(text: '0');
            }
            if (value == allowedSymbol) {
              _controller.value = TextEditingValue(text: '0$allowedSymbol');
            }
            if (value.contains(allowedSymbol) &&
                value
                    .replaceRange(value.lastIndexOf(allowedSymbol),
                        value.lastIndexOf(allowedSymbol) + 1, '')
                    .contains(allowedSymbol)) {
              _controller.value = TextEditingValue(
                  text: value.replaceRange(value.lastIndexOf(allowedSymbol),
                      value.lastIndexOf(allowedSymbol) + 1, ''));
            }
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              final text = _controller.text.trim();
              Navigator.of(context).pop();
              onApply(text);
            },
            child: Text(S.of(context).apply),
          ),
        ],
      );
    },
  );
}
