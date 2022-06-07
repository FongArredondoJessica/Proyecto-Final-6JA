import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fong/widgets/NavigatorBar.dart';

class Inicio extends StatelessWidget {
  Color rosa = Color(0xFFD80272);
  Color negro = Color(0xFF1F1F1F);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inicio',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'INICIO',
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
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://github.com/FongArredondoJessica/Flutter-mis-Imagenes/blob/main/IZZI.jpg?raw=true',
                      width: 300,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Text(
                        '¿Qué ofrecemos?',
                        style: TextStyle(
                          color: rosa,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Material(
                              elevation: 10,
                              child: Container(
                                width: 150,
                                color: Colors.grey[200],
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 5),
                                      child: Icon(Icons.book, color: rosa),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 10),
                                      child: Text(
                                        'Planes',
                                        style: TextStyle(color: rosa, fontSize: 16, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Image.network(
                                      'https://github.com/FongArredondoJessica/Flutter-mis-Imagenes/blob/main/bottom_line.jpg?raw=true',
                                      width: double.infinity,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Material(
                              elevation: 10,
                              child: Container(
                                width: 150,
                                color: Colors.grey[200],
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 5),
                                      child: Icon(Icons.accessibility, color: negro),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 10),
                                      child: Text(
                                        'Servicios',
                                        style: TextStyle(color: negro, fontSize: 16, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Image.network(
                                      'https://github.com/FongArredondoJessica/Flutter-mis-Imagenes/blob/main/bottom_line.jpg?raw=true',
                                      width: double.infinity,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Material(
                              elevation: 10,
                              child: Container(
                                width: 150,
                                color: Colors.grey[200],
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 5),
                                      child: Icon(FontAwesomeIcons.pen, color: rosa),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 10),
                                      child: Text(
                                        'Facturas',
                                        style: TextStyle(color: rosa, fontSize: 16, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Image.network(
                                      'https://github.com/FongArredondoJessica/Flutter-mis-Imagenes/blob/main/bottom_line.jpg?raw=true',
                                      width: double.infinity,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Material(
                              elevation: 10,
                              child: Container(
                                width: 150,
                                color: Colors.grey[200],
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 5),
                                      child: Icon(Icons.tag_faces, color: negro),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 10),
                                      child: Text(
                                        'Calidad',
                                        style: TextStyle(color: negro, fontSize: 16, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Image.network(
                                      'https://github.com/FongArredondoJessica/Flutter-mis-Imagenes/blob/main/bottom_line.jpg?raw=true',
                                      width: double.infinity,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              NavigatorBar(contexto: context, active: 'inicio')
            ],
          ),
        ),
      ),
    );
  }
}
