import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Favorites Screen',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}

// import 'package:asroo_store/features/customer/favorites/presentation/refactors/favorites_body.dart';
// import 'package:flutter/material.dart';
//
// class FavoritesScreen extends StatelessWidget {
//   const FavoritesScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const FavorietsBody();
//   }
// }
