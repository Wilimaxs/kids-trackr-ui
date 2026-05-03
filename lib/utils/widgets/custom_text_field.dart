import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomTextField extends StatelessWidget {
  final String name;
  final String? label;
  final String? hint;
  final bool obscureText;
  final bool readOnly;
  final bool enabled;
  final bool required;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final void Function(String?)? onChanged;
  final TextInputAction? textInputAction;
  final String? initialValue;
  final EdgeInsetsGeometry? contentPadding;

  const CustomTextField({
    super.key,
    required this.name,
    required this.label,
    required this.hint,
    this.obscureText = false,
    this.readOnly = false,
    this.enabled = true,
    this.required = false,
    this.validator,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.textInputAction,
    this.initialValue,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          RichText(
            text: TextSpan(
              text: label!,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(color: colorScheme.onSurface),
              children: [
                if (required)
                  const TextSpan(
                    text: ' *',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 6),
        ],
        FormBuilderField<String>(
          name: name,
          initialValue: initialValue,
          validator: validator,
          builder: (FormFieldState<String> field) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: enabled ? colorScheme.surface : colorScheme.surface.withValues(alpha: 0.65),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: enabled
                        ? [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.04),
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                            ),
                          ]
                        : null,
                  ),
                  child: TextField(
                    cursorColor: colorScheme.primary,
                    style: textTheme.bodyMedium?.copyWith(color: colorScheme.onSurface),
                    onChanged: (value) {
                      field.didChange(value);
                      onChanged?.call(value);
                    },
                    decoration: InputDecoration(
                      hintText: hint,
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      prefixIcon: prefixIcon,
                      suffixIcon: suffixIcon,
                      hintStyle: textTheme.bodyMedium?.copyWith(color: colorScheme.onSurfaceVariant),
                      contentPadding:
                          contentPadding ??
                          const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      fillColor: Colors.transparent,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: field.hasError
                            ? BorderSide(color: colorScheme.error)
                            : BorderSide(color: colorScheme.outline),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: field.hasError ? colorScheme.error : colorScheme.primary,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: colorScheme.outline),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: colorScheme.error),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: colorScheme.error,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      errorText: null,
                      errorStyle: const TextStyle(height: 0),
                    ),
                    obscureText: obscureText,
                    readOnly: enabled ? readOnly : true,
                    enabled: enabled,
                    keyboardType: keyboardType,
                    textInputAction: textInputAction ?? TextInputAction.done,
                  ),
                ),
                if (field.hasError) ...[
                  const SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text(
                      field.errorText ?? '',
                      style: textTheme.bodySmall?.copyWith(
                            color: colorScheme.error,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ],
              ],
            );
          },
        ),
      ],
    );
  }
}
