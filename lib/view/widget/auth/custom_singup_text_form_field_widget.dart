import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomSignupTextFormFieldWidget extends StatefulWidget {
  final String label;
  final String hint;
  final IconData icon;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;

  const CustomSignupTextFormFieldWidget({
    super.key,
    required this.label,
    required this.hint,
    required this.icon,
    required this.obscureText,
    required this.keyboardType,
    required this.controller,
    required this.validator,
  });

  @override
  State<CustomSignupTextFormFieldWidget> createState() =>
      _CustomSignupTextFormFieldWidgetState();
}

class _CustomSignupTextFormFieldWidgetState
    extends State<CustomSignupTextFormFieldWidget> {
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xFF302B45),
          ),
        ),
        const SizedBox(height: 9),
        TextFormField(
          validator: widget.validator,
          controller: widget.controller,
          obscureText: _isObscured,
          keyboardType: widget.keyboardType,
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.right,
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: const TextStyle(color: Color(0xFFAAA6B8), fontSize: 13),
            prefixIcon: Icon(widget.icon, color: AppColor.primary, size: 22),
            suffixIcon: widget.obscureText
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscured = !_isObscured;
                      });
                    },
                    icon: Icon(
                      _isObscured
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: AppColor.primary,
                    ),
                  )
                : null,
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 18,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Color(0xFFE8E5F2)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Color(0xFFE8E5F2)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: AppColor.primary, width: 1.5),
            ),
          ),
        ),
      ],
    );
  }
}

// import 'package:ecommerce_app/core/constant/color.dart';
// import 'package:flutter/material.dart';

// class CustomSignupTextFormFieldWidget extends StatelessWidget {
//   final String label;
//   final String hint;
//   final IconData icon;
//   final bool obscureText;
//   final TextEditingController? controller;
//   final TextInputType keyboardType;
//   const CustomSignupTextFormFieldWidget({
//     super.key,
//     required this.label,
//     required this.hint,
//     required this.icon,
//     required this.obscureText,
//     required this.keyboardType,
//     required this.controller,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: const TextStyle(
//             fontSize: 14,
//             fontWeight: FontWeight.w600,
//             color: Color(0xFF302B45),
//           ),
//         ),
//         const SizedBox(height: 9),
//         TextFormField(
//           obscureText: obscureText,
//           keyboardType: keyboardType,
//           textDirection: TextDirection.ltr,
//           textAlign: TextAlign.right,
//           decoration: InputDecoration(
//             hintText: hint,

//             hintStyle: const TextStyle(color: Color(0xFFAAA6B8), fontSize: 13),
//             prefixIcon: Icon(icon, color: AppColor.primary, size: 22),
//             filled: true,
//             fillColor: Colors.white,
//             contentPadding: const EdgeInsets.symmetric(
//               horizontal: 16,
//               vertical: 18,
//             ),
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(15),
//               borderSide: const BorderSide(color: Color(0xFFE8E5F2)),
//             ),
//             enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(15),
//               borderSide: const BorderSide(color: Color(0xFFE8E5F2)),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(15),
//               borderSide: BorderSide(color: AppColor.primary, width: 1.5),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
