import 'package:flutter/material.dart';

class ItemArticle extends StatelessWidget {
  ItemArticle({@required this.imagen, @required this.titulo});

  final imagen;
  final titulo;

  Color rosa = Color(0xFFD80272);
  Color negro = Color(0xFF1F1F1F);

  Widget build(BuildContext context) {
    return Material(
      elevation: 6,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              '$imagen',
              height: 50,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
              child: Text(
                '$titulo',
                textAlign: TextAlign.center,
                style: TextStyle(color: rosa, fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
              child: ElevatedButton(
                child: Text(
                  'Agregar',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: rosa,
                  minimumSize: Size(
                    double.infinity,
                    40,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
