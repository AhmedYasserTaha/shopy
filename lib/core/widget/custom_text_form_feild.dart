import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopy/core/widget/cubit/text_feild_cubit.dart';

class CustomTextField extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return BlocBuilder<TextFeildCubit, TextFeildState>(
      builder: (context, state) {
        bool obscureText = context.read<TextFeildCubit>().isPasswordVisible;

        return TextFormField(
          decoration: InputDecoration(
            labelText: label,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
            prefixIcon: Icon(icon), // أيقونة البداية
            suffixIcon: isPassword
                ? IconButton(
                    icon: Icon(
                        obscureText ? Icons.visibility_off : Icons.visibility),
                    onPressed: () {
                      context.read<TextFeildCubit>().togglePasswordVisibility();
                    },
                  )
                : null,
          ),
          keyboardType: keyboardType,
          obscureText: isPassword ? obscureText : false,
        );
      },
    );
  }
}
