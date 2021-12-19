import 'package:ab_sport/src/models/reservacion_models.dart';
import 'package:ab_sport/src/services/reservacion_service.dart';
import 'package:flutter/material.dart';

import 'cards/Reservacio_card.dart';

class Reservacion_List extends StatefulWidget {
  Reservacion_List({Key? key}) : super(key: key);

  @override
  _Reservacion_ListState createState() => _Reservacion_ListState();
}

class _Reservacion_ListState extends State<Reservacion_List> {
  ReservacionService _service = ReservacionService();
  List<Reservacion> _reservacion = [];
  void initState() {
    super.initState();
    _loadReservacion();

    //Imprimir los tipos de pago
  }

  @override
  Widget build(BuildContext context) {
    return _reservacion == null
        ? Text("Descargando")
        : _reservacion.length == 0
            ? Text("No hay datos")
            : Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 14.0),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: _reservacion
                        .map((e) => ReservacionCard(rese: e))
                        .toList()),
              );
  }

  _loadReservacion() {
    _service.getReservacion().then((value) {
      _reservacion = value;
      if (mounted) {
        setState(() {});
      }
    });
  }
}
