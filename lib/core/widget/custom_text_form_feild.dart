import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final TextInputType keyboardType;
  final bool isPassword;
  final IconData icon;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.keyboardType,
    this.isPassword = false,
    required this.icon,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: widget.label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        prefixIcon: Icon(widget.icon), // أيقونة البداية
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : null, // لو مش باسورد مش هيكون فيه زرار
      ),
      keyboardType: widget.keyboardType,
      obscureText: widget.isPassword ? _obscureText : false,
    );
  }
}
