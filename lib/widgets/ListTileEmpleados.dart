import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTileEmpleados extends StatelessWidget {
  ListTileEmpleados({@required this.imagen, @required this.color, @required this.icono, @required this.nombre});

  final imagen;
  final color;
  final icono;
  final nombre;

  Widget build(BuildContext) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 5),
      child: Container(
          width: double.infinity,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage('$imagen'),
                radius: 30,
              ),
              Text(
                '$nombre',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                  child: icono,
                ),
              ),
            ],
          )),
    );
  }
}
