import 'package:flutter/material.dart';
import 'package:fong/widgets/NavigatorBar.dart';

class Conclusiones extends StatelessWidget {
  Color rosa = Color(0xFFD80272);
  Color negro = Color(0xFF1F1F1F);

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conclusiones',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'CONCLUSION',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.keyboard_arrow_left, color: Colors.white),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: rosa,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                    child: Text(
                      'Mi conclusion final del proyecto es que, realizamos una app en flutlab, con lo que hemos vistoa a lo largo de la clase, obviamente no sabía todo lo que tenia que usar para hacer la aplicacion, pero consultando en paginas de internet y videos en youtube, ya que para hacer la aplicacion se necesitan de widgets como gridview, listview, navbar, stack y así para poder realizar las pantallas de cierta manera. Tambien otra de las cosas que aprendí con esta actividad, es que, al ser la ultima actividad de la unidad pude reforzar el conocimiento de todo el semestre y aplicarlo en este proyecto para poder realizarlo, ya que utilice imports de otros paquetes ajenos a flutter como por ejemplo ionicons, que es un paquete de iconos que personalmente se me hicieron mas agradables.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              // NavigatorBar(contexto: context, active: 'conclusiones')
            ],
          ),
        ),
      ),
    );
  }
}
