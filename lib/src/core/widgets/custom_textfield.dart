
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  final Function(String)? onTextChanged;
  // final ValidatedField validatedField;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final String? prefixText;
  final String labelText;
  final TextStyle? labelStyle;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final String? bottomInfoText;
  final TextInputType textInputType;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final Widget? trailingIcon;
  final bool isReadOnly;
  final bool shouldShowValidation;

  const CustomTextField({
    super.key,
    required this.labelText,
    // required this.validatedField,
    this.controller,
    this.prefixText,
    this.onTextChanged,
    this.labelStyle,
    this.hintText,
    this.hintStyle,
    this.style,
    this.bottomInfoText,
    this.inputFormatters,
    this.textInputType = TextInputType.text,
    this.shouldShowValidation = false,
    this.isReadOnly = false,
    this.focusNode,
    this.onTap,
    this.trailingIcon,
  }) : super();

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextField> {
  late FocusNode _focusNode;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(() {
      // setState(() {
      //   _getFieldBorder();
      // });
    });
    // final initialValue = widget.validatedField.unvalidatedValue != null
    //     ? widget.validatedField.unvalidatedValue.toString()
    //     : '';
    _controller = widget.controller ??
        TextEditingController(
          // text: initialValue,
        );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(
            top: 18,
            left: 24,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: _getFieldBorder()),
            color: CustomColors.grey1Color,
            borderRadius: BorderRadius.circular(16),
          ),
          child: TextFormField(
            readOnly: widget.isReadOnly,
            controller: _controller,
            focusNode: _focusNode,
            keyboardType: widget.textInputType,
            style: widget.style ?? Theme.of(context).textTheme.titleSmall!
              .copyWith(fontWeight: FontWeight.w600),
            decoration: InputDecoration(
              labelText: widget.labelText,
              // labelStyle: widget.validatedField.isValid() ||
              //         !widget.shouldShowValidation
              //     ? (widget.labelStyle ??
              //             Theme.of(context)
              //                 .jeko
              //                 .fontSize16!
              //                 .semiBold
              //                 .primaryGreenColor)
              //         .copyWith(height: 2)
              //     : Theme.of(context)
              //         .jeko
              //         .fontSize16!
              //         .semiBold
              //         .errorColor
              //         .copyWith(height: 2),
              hintText: widget.hintText,
              prefixText: _controller.text.isEmpty ? null : widget.prefixText,
              suffixIcon: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: widget.trailingIcon, // ?? _buildErrorIcon(),
              ),
            ),
            inputFormatters: widget.inputFormatters,
            onChanged: widget.onTextChanged,
            onTap: widget.onTap,
          ),
        ),
        // if (!widget.validatedField.isValid() &&
        //     widget.shouldShowValidation) ...[
        //   Padding(
        //     padding: const EdgeInsets.only(
        //       top: 8,
        //       right: 24,
        //       left: 24,
        //     ),
        //     child: Text(
        //       widget.validatedField.validationMessage!,
        //       style: Theme.of(context).jeko.fontSize12!.semiBold.errorColor,
        //     ),
        //   )
        // ],
        // if (widget.bottomInfoText != null && widget.validatedField.isValid())
        //   Padding(
        //     padding: const EdgeInsets.only(
        //       top: 8,
        //       right: 24,
        //       left: 24,
        //     ),
        //     child: Text(
        //       widget.bottomInfoText!,
        //       style: Theme.of(context)
        //           .jeko
        //           .fontSize12!
        //           .semiBold
        //           .grey5Color
        //           .textHeight(1.3),
        //     ),
        //   ),
      ],
    );
  }

  // Widget _buildErrorIcon() {
  //   return !widget.validatedField.isValid() && widget.shouldShowValidation
  //       ? Padding(
  //           padding: const EdgeInsets.only(
  //             left: 4,
  //             right: 24,
  //           ),
  //           child: SvgPicture.asset(
  //             Assets.iconFieldError,
  //             package: Strings.packageName,
  //           ),
  //         )
  //       : const SizedBox.shrink();
  // }

  Color _getFieldBorder() {
    // if (widget.validatedField.isValid() || !widget.shouldShowValidation) {
      if (_focusNode.hasFocus) {
        return CustomColors.grey4Color;
      } else {
        return Colors.transparent;
      }
    // } else {
    //   return CustomColors.errorColor;
    // }
  }
}