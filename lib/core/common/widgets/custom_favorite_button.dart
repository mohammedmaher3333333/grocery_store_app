import 'package:flutter/material.dart';
import 'package:grocery_store_app/core/extensions/context_extension.dart';

class CustomFavoriteButton extends StatelessWidget {
  const CustomFavoriteButton({
    required this.size,
    required this.isFavorites,
    required this.onTap,
    super.key,
  });

  final double size;
  final bool isFavorites;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      padding: EdgeInsets.zero,
      icon: Icon(
        isFavorites ? Icons.shopping_cart_sharp : Icons.shopping_cart_checkout_outlined,
        color:
            isFavorites ? context.color.bluePinkLight : context.color.textColor,
        size: size,
      ),
    );
  }
}


