import 'package:flutter/material.dart';

class BottonNavBar extends StatefulWidget {
  const BottonNavBar({super.key});

  @override
  State<BottonNavBar> createState() => _BottonNavBarState();
}

class _BottonNavBarState extends State<BottonNavBar> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  // Lista de colores para los ítems seleccionados
  final List<Color> _selectedItemColors = [
    Colors.blue,
    Colors.green,
    Colors.red,
  ];

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Carreras',
      style: optionStyle,
    ),
    Text(
      'Index 2: Eventos',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botton Nav Bar'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_location_alt_outlined),
            label: 'Carreras',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Eventos',
            backgroundColor: Colors.red,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: _selectedItemColors.elementAt(_selectedIndex),
        onTap: _onItemTapped,
        selectedFontSize: 19,
        unselectedFontSize: 15,
        showUnselectedLabels: true,
        selectedIconTheme: const IconThemeData(size: 30.0),
        unselectedIconTheme: const IconThemeData(size: 24.0),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
