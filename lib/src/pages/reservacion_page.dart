import 'package:ab_sport/src/widgest/reservacion_lis.dart';
import 'package:flutter/material.dart';

class PageReservacion extends StatelessWidget {
  const PageReservacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Reservacion_List(),
    );
  }
}
