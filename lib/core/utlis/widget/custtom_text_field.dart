import 'package:flutter/material.dart';

class customTextFromField extends StatelessWidget{
  const customTextFromField({Key? key, this.inputType, this.suffixIcon, this.onSaved, this.onChange, this.maxLines});
  final TextInputType? inputType;
  final Widget? suffixIcon;
  final ValueSetter? onSaved;
  final ValueSetter? onChange;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      onChanged: onChange,
      onSaved: onSaved,
      maxLines: maxLines,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Color(0xFFCCCCCC),
          )
        )
      ),
    );
  }
}
