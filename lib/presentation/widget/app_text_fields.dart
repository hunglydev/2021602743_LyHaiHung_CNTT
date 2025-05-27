import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hunglydev_datn/common/util/app_util.dart';

/// Enum for Text Field
enum TextFieldType {
  email,
  emailEnhanced,
  password,
  name,
  multiline,
  other,
  phone,
  url,
  number,
  username,
}

String errorThisFieldRequired = 'This field is required';

class AppTextField extends StatefulWidget {
  final TextEditingController? controller;
  final TextFieldType textFieldType;

  final InputDecoration? decoration;
  final FocusNode? focus;
  final FormFieldValidator<String>? validator;
  final bool isValidationRequired;
  final TextCapitalization? textCapitalization;
  final TextInputAction? textInputAction;
  final Function(String)? onFieldSubmitted;
  final Function(String)? onChanged;
  final FocusNode? nextFocus;
  final TextStyle? textStyle;
  final TextAlign textAlign;
  final int? maxLines;
  final int? minLines;
  final bool? enabled;
  final bool autoFocus;
  final bool readOnly;
  final bool? enableSuggestions;
  final int? maxLength;
  final Color? cursorColor;
  final Widget? suffix;
  final Color? suffixIconColor;
  final TextInputType? keyboardType;
  final Iterable<String>? autoFillHints;
  final EdgeInsets? scrollPadding;
  final double? cursorWidth;
  final double? cursorHeight;
  final Function()? onTap;
  final InputCounterWidgetBuilder? buildCounter;
  final List<TextInputFormatter>? inputFormatters;
  final TextAlignVertical? textAlignVertical;
  final bool expands;
  final bool? showCursor;
  final TextSelectionControls? selectionControls;
  final StrutStyle? strutStyle;
  final String obscuringCharacter;
  final String? initialValue;
  final Brightness? keyboardAppearance;
  final Widget? suffixPasswordVisibleWidget;
  final Widget? suffixPasswordInvisibleWidget;
  final EditableTextContextMenuBuilder? contextMenuBuilder;

  final String? errorThisFieldRequired;
  final String? errorInvalidEmail;
  final String? errorMinimumPasswordLength;
  final String? errorInvalidURL;
  final String? errorInvalidUsername;

  final String? title;
  final TextStyle? titleTextStyle;
  final int spacingBetweenTitleAndTextFormField;

  final bool obscureText;

  const AppTextField({
    this.controller,
    this.textFieldType = TextFieldType.other,
    this.decoration,
    this.focus,
    this.validator,
    this.buildCounter,
    this.isValidationRequired = true,
    this.textCapitalization,
    this.textInputAction,
    this.onFieldSubmitted,
    this.nextFocus,
    this.textStyle,
    this.textAlign = TextAlign.start,
    this.maxLines,
    this.minLines,
    this.enabled,
    this.onChanged,
    this.cursorColor,
    this.suffix,
    this.suffixIconColor,
    this.enableSuggestions,
    this.autoFocus = false,
    this.readOnly = false,
    this.maxLength,
    this.keyboardType,
    this.autoFillHints,
    this.scrollPadding,
    this.onTap,
    this.cursorWidth,
    this.cursorHeight,
    this.inputFormatters,
    this.errorThisFieldRequired,
    this.errorInvalidEmail,
    this.errorMinimumPasswordLength,
    this.errorInvalidURL,
    this.errorInvalidUsername,
    this.textAlignVertical,
    this.expands = false,
    this.showCursor,
    this.selectionControls,
    this.strutStyle,
    this.obscuringCharacter = '•',
    this.initialValue,
    this.keyboardAppearance,
    this.suffixPasswordVisibleWidget,
    this.suffixPasswordInvisibleWidget,
    this.contextMenuBuilder,
    this.title,
    this.titleTextStyle,
    this.spacingBetweenTitleAndTextFormField = 4,
    this.obscureText = false,
    super.key,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool obscureText = false;
  List<String> recentChat = [];
  late final TextEditingController textEditingController;

  @override
  void initState() {
    textEditingController = widget.controller ?? TextEditingController();
    super.initState();
  }

  Widget _suffixIcon() {
    return widget.obscureText
        ? IconButton(
            onPressed: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
            icon: Icon(obscureText ? Icons.visibility : Icons.visibility_off),
          )
        : textEditingController.text.isNotEmpty
            ? IconButton(
                onPressed: () {
                  setState(() {
                    textEditingController.clear();
                    if (widget.onChanged != null) {
                      widget.onChanged!('');
                    }
                  });
                },
                icon: const Icon(Icons.clear),
              )
            : const SizedBox.shrink();
  }

  Iterable<String>? applyAutofillHints() {
    if (widget.textFieldType == TextFieldType.email || widget.textFieldType == TextFieldType.emailEnhanced) {
      return [AutofillHints.email];
    } else if (widget.textFieldType == TextFieldType.password) {
      return [AutofillHints.password];
    }
    return null;
  }

  Widget textFormFieldWidget() {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.textFieldType == TextFieldType.password && !obscureText && widget.obscureText,
      onFieldSubmitted: (s) {
        if (widget.nextFocus != null) {
          FocusScope.of(context).requestFocus(widget.nextFocus);
        }

        if (widget.onFieldSubmitted != null) widget.onFieldSubmitted!.call(s);
      },
      decoration: widget.decoration != null
          ? widget.decoration!.copyWith(
              suffixIcon: _suffixIcon(),
            )
          : const InputDecoration(),
      focusNode: widget.focus,
      style: widget.textStyle,
      textAlign: widget.textAlign,
      maxLines: widget.maxLines ?? (widget.textFieldType == TextFieldType.multiline ? 10 : 1),
      minLines: widget.minLines ?? (widget.textFieldType == TextFieldType.multiline ? 2 : 1),
      autofocus: widget.autoFocus,
      enabled: widget.enabled,
      onChanged: widget.onChanged,
      cursorColor: widget.cursorColor ?? Theme.of(context).textSelectionTheme.cursorColor,
      readOnly: widget.readOnly,
      maxLength: widget.maxLength,
      enableSuggestions: widget.enableSuggestions ?? true,
      autofillHints: widget.autoFillHints ?? applyAutofillHints(),
      scrollPadding: widget.scrollPadding ?? const EdgeInsets.all(20),
      cursorWidth: widget.cursorWidth ?? 2.0,
      cursorHeight: widget.cursorHeight,
      cursorRadius: const Radius.circular(4),
      onTap: widget.onTap,
      buildCounter: widget.buildCounter,
      scrollPhysics: const BouncingScrollPhysics(),
      enableInteractiveSelection: true,
      inputFormatters: widget.inputFormatters,
      textAlignVertical: widget.textAlignVertical,
      expands: widget.expands,
      showCursor: widget.showCursor,
      selectionControls: widget.selectionControls ?? MaterialTextSelectionControls(),
      strutStyle: widget.strutStyle,
      obscuringCharacter: widget.obscuringCharacter,
      initialValue: widget.initialValue,
      keyboardAppearance: widget.keyboardAppearance,
      contextMenuBuilder: widget.contextMenuBuilder,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!isEmpty(widget.title)) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title!,
            style: widget.titleTextStyle,
          ),
          const SizedBox(
            height: 8,
          ),
          textFormFieldWidget(),
        ],
      );
    }

    return textFormFieldWidget();
  }
}
