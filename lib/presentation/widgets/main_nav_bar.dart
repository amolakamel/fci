// import 'package:flutter/material.dart';
// import 'package:easy_shop/core/constants/app_colors.dart';
// import 'package:easy_shop/views/widgets/main_text.dart';
//
// class MainNavBar extends StatelessWidget {
//   const MainNavBar({
//     super.key,
//     required this.index,
//   });
//
//   final int? index;
//
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       elevation: 0,
//       currentIndex: index!,
//       onTap: (value) {
//       },
//       selectedItemColor: AppColors.yPrimaryColor,
//       unselectedItemColor: AppColors.yGreyColor,
//       showUnselectedLabels: true,
//       items: const [
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home_rounded),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.favorite,
//           color:  AppColors.yGreenColor),
//           label: 'Favorite',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.card_travel),
//           label: 'Cart',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.person_2_outlined),
//           label: 'Profile',
//         ),
//       ],
//     );
//   }
// }
