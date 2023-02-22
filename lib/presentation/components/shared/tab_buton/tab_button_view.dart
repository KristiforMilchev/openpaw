import 'package:badges/badges.dart' as Badges;

import 'package:flutter/material.dart';

import '../../../../domain/Assets/styles.dart';

// ignore: must_be_immutable
class TabButton extends StatelessWidget {
  final IconData? icon;
  late double? iconSize;
  final String? label;
  final int? badgeCount;
  final Function callback;
  late bool isActive;
  final Color? color;

  TabButton(
      {super.key,
      required this.iconSize,
      required this.callback,
      required this.isActive,
      this.badgeCount,
      this.icon,
      this.label,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color:
          isActive ? color ?? ThemeColors.mainText : ThemeColors.cardBackground,
      child: InkWell(
        onTap: () => callback.call(),
        child: Visibility(
          visible: badgeCount != null,
          replacement: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Visibility(
                visible: icon != null,
                child: GeneralTheme.tableHeaderIcon(
                  icon!,
                  iconSize ?? 0,
                  isActive
                      ? color != null
                          ? Colors.white
                          : ThemeColors.cardBackground
                      : ThemeColors.mainText,
                ),
              ),
              Visibility(
                visible: label != null,
                child: Text(
                  label!,
                  style: TextStyle(
                    color: isActive
                        ? color != null
                            ? Colors.white
                            : ThemeColors.cardBackground
                        : ThemeColors.mainText,
                    fontSize: (iconSize! - 1),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          child: Badges.Badge(
            badgeStyle: Badges.BadgeStyle(
              badgeColor:
                  isActive ? ThemeColors.cardBackground : ThemeColors.mainText,
            ),
            ignorePointer: true,
            position: Badges.BadgePosition.topEnd(),
            badgeAnimation: const Badges.BadgeAnimation.fade(
              toAnimate: true,
              loopAnimation: true,
              animationDuration: Duration(seconds: 2),
              curve: Curves.easeIn,
            ),
            badgeContent: Text(
              badgeCount.toString(),
              style: TextStyle(
                fontSize: 8,
                color: isActive
                    ? ThemeColors.mainText
                    : ThemeColors.cardBackground,
              ),
              textAlign: TextAlign.center,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(
                    visible: icon != null,
                    child: GeneralTheme.tableHeaderIcon(
                      icon!,
                      iconSize ?? 0,
                      isActive
                          ? ThemeColors.cardBackground
                          : ThemeColors.mainText,
                    )),
                Visibility(
                  visible: label != null,
                  child: Text(
                    label!,
                    style: TextStyle(
                      color: isActive
                          ? ThemeColors.cardBackground
                          : ThemeColors.mainText,
                      fontSize: (iconSize! - 1),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
