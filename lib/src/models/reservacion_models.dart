// To parse this JSON data, do
//
//     final reservacion = reservacionFromJson(jsonString);

import 'dart:convert';

Reservacion reservacionFromJson(String str) => Reservacion.fromJson(json.decode(str));

String reservacionToJson(Reservacion data) => json.encode(data.toJson());

class Reservacion {
    Reservacion({
        this.horario,
        this.precio,
        this.foto,
        this.estado,
    });

    DateTime? horario;
    String? precio;
    String? foto;
    String? estado;

    factory Reservacion.fromJson(Map<String, dynamic> json) => Reservacion(
        horario: DateTime.parse(json["horario"]),
        precio: json["precio"],
        foto: json["foto"],
        estado: json["estado"],
    );

    Map<String, dynamic> toJson() => {
        "horario": horario.toString(),
        "precio": precio,
        "foto": foto,
        "estado": estado,
    };
}