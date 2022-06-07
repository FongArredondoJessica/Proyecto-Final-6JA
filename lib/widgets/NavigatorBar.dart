import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class NavigatorBar extends StatelessWidget {
  NavigatorBar({
    @required this.contexto,
    @required this.active,
  });

  final contexto;
  final active;

  Color rosa = Color(0xFFD80272);
  Color negro = Color(0xFF1F1F1F);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Material(
          elevation: 10,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          child: Container(
            height: 60.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              color: Colors.white,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(contexto, '/inicio');
                  },
                  icon: Icon(Ionicons.home_outline, color: active == 'inicio' ? rosa : Colors.grey[500]),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(contexto, '/registroClientes');
                  },
                  icon: Icon(Ionicons.people_outline, color: active == 'clientes' ? rosa : Colors.grey[500]),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(contexto, '/empleados');
                  },
                  icon: Icon(Ionicons.id_card_outline, color: active == 'empleados' ? rosa : Colors.grey[500]),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(contexto, '/articulos');
                  },
                  icon: Icon(Ionicons.bag_outline, color: active == 'articulos' ? rosa : Colors.grey[500]),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(contexto, '/datos');
                  },
                  icon: Icon(Ionicons.construct_outline, color: active == 'datos' ? rosa : Colors.grey[500]),
                ),
              ],
            ),
          )),
    );
  }
}
