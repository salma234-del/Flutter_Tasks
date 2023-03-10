import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color bgColor = Colors.blue,
  double radius = 0,
  bool upper = true,
  required Function function,
  required String text,
}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          upper ? text.toUpperCase() : text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

Widget defaultTextField({
  required TextEditingController controller,
  required TextInputType type,
  required String? Function(String?) validate,
  Function? onSubmit,
  Function? onChange,
  bool password = false,
  required String label,
  required IconData preIcon,
  IconData? suffIcon,
  Function? suffPressed,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      validator: validate,
      onFieldSubmitted: (value) {
        onSubmit!(value);
      },
      onChanged: (value) {
        onChange!(value);
      },
      obscureText: password,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(preIcon),
        suffixIcon: IconButton(
          icon: Icon(suffIcon),
          onPressed: () {
            suffPressed!();
          },
        ),
        border: const OutlineInputBorder(),
      ),
    );
