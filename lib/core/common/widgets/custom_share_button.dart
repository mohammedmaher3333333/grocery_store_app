import 'package:flutter/material.dart';
import 'package:grocery_store_app/core/extensions/context_extension.dart';


class CustomShareButton extends StatelessWidget {
  const CustomShareButton({required this.size, super.key});

  final double size;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      padding: EdgeInsets.zero,
      icon: Icon(
        Icons.share,
        color: context.color.textColor,
        size: size,
      ),
    );
  }
}

// class CustomShareButton extends StatelessWidget {
//   const CustomShareButton({required this.size, required this.onTap, super.key});
//
//   final double size;
//   final VoidCallback onTap;
//
//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       onPressed: onTap,
//       padding: EdgeInsets.zero,
//       icon: Icon(
//         Icons.share,
//         color: context.color.textColor,
//         size: size,
//       ),
//     );
//   }
// }
