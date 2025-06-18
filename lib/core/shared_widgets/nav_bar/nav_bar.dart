import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shmr_finance/core/shared_widgets/nav_bar/nav_bar_items.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';
import 'package:shmr_finance/utils/themes/text_theme_extension.dart';

class ShmrNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onSelect;
  final Widget child;

  const ShmrNavBar(
      {super.key, required this.currentIndex, required this.onSelect, required this.child});

  @override
  Widget build(BuildContext context) {
    final items = NavBarItems.items(context);
    return Scaffold(
      appBar: null,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: context.theme.bottomNavBarColor,
        useLegacyColorScheme: false,
        type: BottomNavigationBarType.fixed,
        items: List.generate(
          items.length,
          (index) => BottomNavigationBarItem(
              icon: items[index].icon,
              label: items[index].label,
              activeIcon: items[index].selectedIcon),
        ),
        currentIndex: currentIndex,
        unselectedLabelStyle: context.textTheme.labelSmall,
        selectedLabelStyle: context.textTheme.labelSmallBold,
        onTap: onSelect,
      ),
      body: child,
    );
  }
}

// class ShmrNavBar extends StatefulWidget {
//   final Widget child;
//   const ShmrNavBar({required this.child, super.key});
//   @override
//   State<ShmrNavBar> createState() => _ShmrNavBarState();
// }

// class _ShmrNavBarState extends State<ShmrNavBar> {
//   int _selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     final items = NavBarItems.items(context);
//     return Scaffold(
//       appBar: null,
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: context.theme.bottomNavBarColor,
//         useLegacyColorScheme: false,
//         type: BottomNavigationBarType.fixed,
//         items: List.generate(
//           items.length,
//           (index) => BottomNavigationBarItem(
//               icon: items[index].icon,
//               label: items[index].label,
//               activeIcon: items[index].selectedIcon),
//         ),
//         currentIndex: _selectedIndex,
//         unselectedLabelStyle: context.textTheme.labelSmall,
//         selectedLabelStyle: context.textTheme.labelSmallBold,
//         onTap: (index) {
//           setState(() {
//             _selectedIndex = index;
//           });
//           context.go(items[index].routeName);
//         },
//       ),
//       body: widget.child,
//     );
//   }
// }
