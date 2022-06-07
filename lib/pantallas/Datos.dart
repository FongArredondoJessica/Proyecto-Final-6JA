import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fong/widgets/NavigatorBar.dart';

class Datos extends StatelessWidget {
  Color rosa = Color(0xFFD80272);
  Color negro = Color(0xFF1F1F1F);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Datos',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'DATOS',
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 280,
                      child: Stack(
                        children: [
                          Image.network(
                            'https://github.com/FongArredondoJessica/Flutter-mis-Imagenes/blob/main/izziBanner.jpeg?raw=true',
                            height: 220,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            top: 160,
                            left: 20,
                            right: 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage('https://github.com/FongArredondoJessica/Flutter-mis-Imagenes/blob/main/pfp.jpg?raw=true'),
                                  radius: 60,
                                ),
                                ElevatedButton(
                                  child: Text(
                                    'Ver conclusion',
                                    style: TextStyle(color: Colors.white, fontSize: 18),
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/conclusiones');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.black,
                                    shape: StadiumBorder(),
                                    minimumSize: Size(100, 60),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Text(
                        'Jessica Fong',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Row(
                        children: [
                          Text('Escuela:', style: TextStyle(fontSize: 16)),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: Text('CBTIS 128 | Jaguares', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Row(
                        children: [
                          Text('Cumpleaños:', style: TextStyle(fontSize: 16)),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: Text('31/Feb/2004', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Row(
                        children: [
                          Text('Empresa:', style: TextStyle(fontSize: 16)),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: Text('IZZI', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Row(
                        children: [
                          Text('Grupo:', style: TextStyle(fontSize: 16)),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: Text('6-J', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              NavigatorBar(contexto: context, active: 'datos')
            ],
          ),
        ),
      ),
    );
  }
}
