import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UiControlsScreen extends StatelessWidget {
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Controladores'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transporte { coche, autobus, avion, tren, barco }

class _UiControlsViewState extends State<_UiControlsView> {
  bool _isDeveloperMode = false;
  Transporte selectedTransportation = Transporte.coche;
  bool tShirt = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Modo Desarrollador'),
          subtitle: const Text('Funciones adicionales'),
          value: _isDeveloperMode,
          onChanged: (value) => setState(
            () {
              _isDeveloperMode = !_isDeveloperMode;
            },
          ),
        ),
        ExpansionTile(
          title: const Text('Vehículo seleccionado'),
          subtitle: Text(selectedTransportation.name),
          children: [
            RadioListTile(
              title: Text(Transporte.coche.name),
              value: Transporte.coche,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(
                () {
                  selectedTransportation = Transporte.coche;
                },
              ),
            ),
            RadioListTile(
              title: Text(Transporte.autobus.name),
              value: Transporte.autobus,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(
                () {
                  selectedTransportation = Transporte.autobus;
                },
              ),
            ),
            RadioListTile(
              title: Text(Transporte.avion.name),
              value: Transporte.avion,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(
                () {
                  selectedTransportation = Transporte.avion;
                },
              ),
            ),
            RadioListTile(
              title: Text(Transporte.tren.name),
              value: Transporte.tren,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(
                () {
                  selectedTransportation = Transporte.tren;
                },
              ),
            ),
            RadioListTile(
              title: Text(Transporte.barco.name),
              value: Transporte.barco,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(
                () {
                  selectedTransportation = Transporte.barco;
                },
              ),
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('¿Quiere camiseta?'),
          subtitle: const Text('Marque la casilla si desea camiseta'),
          value: tShirt,
          onChanged: (value) => setState(() {
            tShirt = !tShirt;
          }),
        ),
      ],
    );
  }
}
