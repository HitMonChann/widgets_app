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
    title: 'Riverpod Counter',
    subTitle: 'Introduccion a riverpod',
    link: '/counter',
    icon: Icons.list_rounded,
  ),
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
  MenuItem(
    title: 'UI Controls',
    subTitle: 'Controladores de flutter',
    link: '/ui-controls',
    icon: Icons.arrow_drop_down_circle_sharp,
  ),
  MenuItem(
    title: 'Tutorial',
    subTitle: 'Tutorial de aplicación',
    link: '/tutorial',
    icon: Icons.settings_accessibility_rounded,
  ),
  MenuItem(
    title: 'Infinite Scroll',
    subTitle: 'Listas infinitas y pull to refresh',
    link: '/infinite',
    icon: Icons.list_rounded,
  ),
  MenuItem(
    title: 'Theme changer',
    subTitle: 'Cambiar tema app',
    link: '/theme-changer',
    icon: Icons.theater_comedy_sharp,
  ),
];
