import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Buttons',
    subTitle: 'Flutter buttons options',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'Cards',
    subTitle: 'Stylish container',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItems(
    title: 'Progress',
    subTitle: 'Linear, circulars and infinite',
    link: '/progress',
    icon: Icons.refresh,
  ),
  MenuItems(
    title: 'Snackbars',
    subTitle: 'Tooltips and dialogs views',
    link: '/snackbars',
    icon: Icons.info_outline,
  ),
  MenuItems(
    title: 'Animated Container',
    subTitle: 'Create figures from a button',
    link: '/animated',
    icon: Icons.animation_outlined,
  ),
  MenuItems(
    title: 'UI Controls',
    subTitle: 'Flutter Controls options',
    link: '/ui-controls',
    icon: Icons.control_point_outlined,
  ),
  MenuItems(
    title: 'Tutorial',
    subTitle: 'Small tutorial app',
    link: '/tutorial',
    icon: Icons.question_answer_outlined,
  ),
];
