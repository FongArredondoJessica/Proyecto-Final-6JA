import 'package:flutter/material.dart';
import 'package:fong/pantallas/InicioSesion.dart';
import 'package:fong/pantallas/RegistroClientes.dart';
import 'package:fong/pantallas/Inicio.dart';
import 'package:fong/pantallas/Empleados.dart';
import 'package:fong/pantallas/Articulos.dart';
import 'package:fong/pantallas/Conclusiones.dart';
import 'package:fong/pantallas/Datos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hello World',
      initialRoute: '/datos',
      routes: {
        '/': (context) => InicioSesion(),
        '/registroClientes': (context) => RegistroClientes(),
        '/inicio': (context) => Inicio(),
        '/empleados': (context) => Empleados(),
        '/articulos': (context) => Articulos(),
        '/conclusiones': (context) => Conclusiones(),
        '/datos': (context) => Datos(),
      },
    );
  }
}
