import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
    link: '/card',
    icon: Icons.credit_card,
  ),
];
