// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class InputTextFieldWidget extends StatelessWidget {
  const InputTextFieldWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
