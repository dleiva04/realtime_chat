import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final IconData icon;
  final String placeholder;
  final TextEditingController textController;
  final TextInputType keyboardType;
  final bool isPassword;
  final bool withForm;

  const CustomInput({
    Key? key,
    required this.icon,
    required this.placeholder,
    required this.textController,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.withForm = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF7F7FC),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: textController,
        autocorrect: false,
        keyboardType: keyboardType,
        obscureText: isPassword,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 10),
          border: InputBorder.none,
          hintText: placeholder,
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter some text';
          }
        },
      ),
    );
  }
}
