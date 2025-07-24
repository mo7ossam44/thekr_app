import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

class CustomZekerTextFormFiled extends StatelessWidget {
  const CustomZekerTextFormFiled({
    super.key,
    required this.text,
    this.onSaved,
    this.type,
  });

  final String text;
  final void Function(String?)? onSaved;
  final TextInputType? type;

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: kPrimaryColor),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: type,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'أضف من فضلك';
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      cursorHeight: 15,
      cursorColor: Colors.white.withOpacity(0.4),
      textDirection: TextDirection.rtl,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xff373535),
        hintText: text,
        hintStyle: TextStyle(fontFamily: kSecondaryFont),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }
}
