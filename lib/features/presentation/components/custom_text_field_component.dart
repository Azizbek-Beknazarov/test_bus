import 'package:flutter/material.dart';

class CustomTextFieldComponent extends StatelessWidget {
  const CustomTextFieldComponent({
    super.key,
    required this.controller,
    required this.hintText,
    this.icon = Icons.location_searching_sharp,
    this.readOnly = false,
    this.onTap,
  });

  final TextEditingController controller;

  final String hintText;
  final IconData icon;
  final bool readOnly;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly,
      onTap: onTap,
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        fillColor: Colors.grey.shade300,
        filled: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        hintText: hintText,
        suffixIcon: Icon(icon),
        suffixIconColor: Colors.blue,
      ),
    );
  }
}
