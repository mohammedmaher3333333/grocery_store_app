import 'package:flutter/material.dart';

class HomeAdminScreen extends StatelessWidget {
  const HomeAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Admin'),
      ),
    );
  }
}















// import 'package:flutter/material.dart';
//
// class HomeAdminScreen extends StatefulWidget {
//   const HomeAdminScreen({super.key});
//
//   @override
//   State<HomeAdminScreen> createState() => _HomeAdminScreenState();
// }
//
// class _HomeAdminScreenState extends State<HomeAdminScreen> {
//   Widget page = const DashBoardScreen();
//   @override
//   Widget build(BuildContext context) {
//     return ZoomDrawer(
//       menuScreen: Builder(
//         builder: (context) {
//           return MenuAdminScren(
//             onPageChanged: (a) {
//               setState(() {
//                 page = a;
//               });
//               ZoomDrawer.of(context)!.close();
//             },
//           );
//         },
//       ),
//       mainScreen: page,
//       borderRadius: 24,
//       showShadow: true,
//       drawerShadowsBackgroundColor: ColorsDark.mainColor.withOpacity(0.6),
//       menuBackgroundColor: ColorsDark.blueDark,
//     );
//   }
// }
//
// class MenuAdminScren extends StatelessWidget {
//   const MenuAdminScren({required this.onPageChanged, super.key});
//
//   final void Function(Widget) onPageChanged;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorsDark.blueDark,
//       appBar: const AdminAppBar(
//         isMain: false,
//         backgroundColor: ColorsDark.blueDark,
//         title: 'Asroo Store',
//       ),
//       body: Column(
//         children: [
//           Column(
//             children: adminDrawerList(context)
//                 .map(
//                   (e) => ListTile(
//                     onTap: () {
//                       onPageChanged(e.page);
//                     },
//                     title: e.title,
//                     leading: e.icon,
//                   ),
//                 )
//                 .toList(),
//           ),
//           Expanded(
//             child: Image.asset(AppImages.drawerImage),
//           ),
//         ],
//       ),
//     );
//   }
// }
