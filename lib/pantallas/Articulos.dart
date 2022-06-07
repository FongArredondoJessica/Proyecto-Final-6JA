import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fong/widgets/NavigatorBar.dart';
import 'package:fong/widgets/ItemArticle.dart';

class Articulos extends StatelessWidget {
  Color rosa = Color(0xFFD80272);
  Color negro = Color(0xFF1F1F1F);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: rosa,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.white,
          onPressed: () {},
        ),
        actions: [
          Icon(Icons.home, color: Colors.white),
        ],
        title: Text(
          'ARTICULOS',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 10),
                    child: Image.network('https://github.com/FongArredondoJessica/Flutter-mis-Imagenes/blob/main/EOB_KjDXkAAPLrY.jpg?raw=true'),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Text(
                      'Consiguelos con un plan',
                      style: TextStyle(
                        color: rosa,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 550,
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        // childAspectRatio: 1,
                      ),
                      // scrollDirection: Axis.vertical,
                      children: [
                        ItemArticle(
                          imagen: "https://github.com/FongArredondoJessica/Flutter-mis-Imagenes/blob/main/celular1.png?raw=true",
                          titulo: 'Samsung Gallaxy S21',
                        ),
                        ItemArticle(
                          imagen: "https://github.com/FongArredondoJessica/Flutter-mis-Imagenes/blob/main/celular2.png?raw=true",
                          titulo: "Xiaomi Mi 11",
                        ),
                        ItemArticle(
                          imagen: "https://github.com/FongArredondoJessica/Flutter-mis-Imagenes/blob/main/celular3.jpg?raw=true",
                          titulo: "Motorola Moto Edge 30",
                        ),
                        ItemArticle(
                          imagen: "https://github.com/FongArredondoJessica/Flutter-mis-Imagenes/blob/main/celular4.webp?raw=true",
                          titulo: "Oppo Reno 5 Lite",
                        ),
                        ItemArticle(
                          imagen: "https://github.com/FongArredondoJessica/Flutter-mis-Imagenes/blob/main/celular1.png?raw=true",
                          titulo: "Samsung Galaxy S21 Ultra",
                        ),
                        ItemArticle(
                          imagen: "https://github.com/FongArredondoJessica/Flutter-mis-Imagenes/blob/main/celular2.png?raw=true",
                          titulo: "Xiaomi Redmi Note 11s",
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10), child: Image.network('https://github.com/FongArredondoJessica/Flutter-mis-Imagenes/blob/main/paquetes1.jpg?raw=true')),
                  Padding(padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10), child: Image.network('https://github.com/FongArredondoJessica/Flutter-mis-Imagenes/blob/main/paquetes2.jpg?raw=true')),
                  SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
          ),
          NavigatorBar(
            contexto: context,
            active: 'articulos',
          )
        ],
      ),
    );
  }
}
