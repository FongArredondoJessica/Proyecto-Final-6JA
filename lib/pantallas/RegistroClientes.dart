import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class RegistroClientes extends StatelessWidget {
  @override
  Color rosa = Color(0xFFD80272);
  Color negro = Color(0xFF1F1F1F);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Registro',
      home: Scaffold(
        body: Ink(
          color: rosa,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                child: Image.network(
                  "https://github.com/FongArredondoJessica/Flutter-mis-Imagenes/blob/main/izziBanner.jpeg?raw=true",
                  width: 150,
                  height: 150,
                ),
              ),
              Expanded(
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: negro,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                            child: Text(
                              "REGISTRO CLIENTES",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
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
                                labelText: 'Calle',
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
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                labelText: 'Contraseña',
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
                              onPressed: () {
                                Navigator.pushNamed(context, '/inicio');
                              },
                              child: Text(
                                'REGISTRARSE',
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'VOLVER',
                                style: TextStyle(
                                  color: rosa,
                                  fontSize: 18,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                minimumSize: Size(double.infinity, 60),
                                shape: StadiumBorder(),
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
