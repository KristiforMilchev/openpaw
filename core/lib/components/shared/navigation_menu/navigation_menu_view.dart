import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';

import '../../../domain/Assets/styles.dart';
import 'navigation_menu_viewmodel.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          color: ThemeColors.cardBackground,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
          boxShadow: [
            BoxShadow(
                spreadRadius: 20,
                blurRadius: 5,
                color: ThemeColors.cardBackground)
          ]),
      child: ViewModelBuilder.reactive(
        viewModelBuilder: () => NavigationMenuViewModel(),
        builder: (context, viewModel, child) => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.home,
              size: 50,
              color: ThemeColors.mainText,
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.video_call,
              size: 50,
              color: ThemeColors.mainText,
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.newspaper,
              size: 50,
              color: ThemeColors.mainText,
            ),
          ],
        ),
      ),
    );
  }
}
