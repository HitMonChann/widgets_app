import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subTitle: 'Botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Progress Indicator',
    subTitle: 'Generales y controlados',
    link: '/progressIndicators',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'Snackbars y diálogos',
    subTitle: 'Mensajes en pantalla',
    link: '/snackbars',
    icon: Icons.info,
  ),
  MenuItem(
    title: 'Animated container',
    subTitle: 'Widget animado',
    link: '/animated',
    icon: Icons.check_box_outline_blank_outlined,
  ),
  MenuItem(
    title: 'Bottom Navigation Bar',
    subTitle: 'Barra de navegación inferior',
    link: '/bottonNavBar',
    icon: Icons.menu_open_sharp,
  ),
];
