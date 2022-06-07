import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fong/widgets/NavigatorBar.dart';
import 'package:fong/widgets/ListTileEmpleados.dart';
import 'package:ionicons/ionicons.dart';

class Empleados extends StatelessWidget {
  Color rosa = Color(0xFFD80272);
  Color negro = Color(0xFF1F1F1F);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Empleados',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'EMPLEADOS',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          leading: Icon(Icons.menu, color: Colors.white),
          actions: [
            Icon(Icons.home, color: Colors.white),
          ],
          backgroundColor: rosa,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 450,
                        width: double.infinity,
                        child: ListView(
                          children: [
                            ListTileEmpleados(color: Color(0xff063232), nombre: 'Valeria Ortiz', icono: Icon(Icons.phone), imagen: 'https://github.com/FongArredondoJessica/Flutter-mis-Imagenes/blob/main/empleado1.jpg?raw=true'),
                            ListTileEmpleados(color: Color(0xffFCD116), nombre: 'Ricardo Diaz', icono: Icon(Icons.cases), imagen: 'https://github.com/FongArredondoJessica/Flutter-mis-Imagenes/blob/main/empleado2.jpg?raw=true'),
                            ListTileEmpleados(color: rosa, nombre: 'Sofia Martinez', icono: Icon(Icons.phone), imagen: 'https://github.com/FongArredondoJessica/Flutter-mis-Imagenes/blob/main/empleado3.jpg?raw=true'),
                            ListTileEmpleados(color: Color(0xff063232), nombre: 'Rafael Hernandez', icono: Icon(Icons.phone), imagen: 'https://github.com/FongArredondoJessica/Flutter-mis-Imagenes/blob/main/empleado4.jpg?raw=true'),
                            ListTileEmpleados(color: Color(0xffFCD116), nombre: 'Itzel Aguirre', icono: Icon(Icons.cases), imagen: 'https://github.com/FongArredondoJessica/Flutter-mis-Imagenes/blob/main/empleado5.jpg?raw=true'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                        child: Column(
                          children: [
                            Text(
                              'Vacantes',
                              style: TextStyle(
                                color: rosa,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Ionicons.at_outline),
                                  labelText: 'Nombre',
                                  filled: true,
                                  fillColor: Color(0xFFF5F5F5),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Ionicons.at_outline),
                                  labelText: 'Apellido',
                                  filled: true,
                                  fillColor: Color(0xFFF5F5F5),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Ionicons.map_outline),
                                  labelText: 'Domicilio',
                                  filled: true,
                                  fillColor: Color(0xFFF5F5F5),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Ionicons.id_card_outline),
                                  labelText: 'CURP',
                                  filled: true,
                                  fillColor: Color(0xFFF5F5F5),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.lock),
                                  labelText: 'RFC',
                                  filled: true,
                                  fillColor: Color(0xFFF5F5F5),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.mail),
                                  labelText: 'Telefono o email',
                                  filled: true,
                                  fillColor: Color(0xFFF5F5F5),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'APLICAR VACANTE',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: rosa,
                                  minimumSize: Size(
                                    double.infinity,
                                    60,
                                  ),
                                  shape: StadiumBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                    ],
                  ),
                ),
              ),
              NavigatorBar(contexto: context, active: 'empleados')
            ],
          ),
        ),
      ),
    );
  }
}
