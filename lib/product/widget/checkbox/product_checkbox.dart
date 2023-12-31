import 'package:flutter/material.dart';
import 'package:vbaseproject/product/items/colors_custom.dart';
import 'package:vbaseproject/product/utility/constants/app_constants.dart';

class ProductCheckbox extends FormField<bool> {
  ProductCheckbox({
    required Widget title,
    required FormFieldSetter<bool> super.onSaved,
    required FormFieldValidator<bool> super.validator,
    super.key,
    super.autovalidateMode,
    bool super.initialValue = false,
  }) : super(
          builder: (FormFieldState<bool> state) {
            return ListTile(
              leading: Checkbox(
                activeColor: ColorsCustom.sambacus,
                value: state.value,
                onChanged: state.didChange,
              ),
              dense: state.hasError,
              horizontalTitleGap: AppConstants.kZero.toDouble(),
              title: title,
              subtitle: state.hasError
                  ? Builder(
                      builder: (BuildContext context) => Text(
                        state.errorText ?? 'Base error',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                    )
                  : null,
            );
          },
        );
}
