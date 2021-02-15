import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {

  final opciones = ['Pepe', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItemsCorta() 
      ),
    );
  }

  // Metodo que crear una lista de widgets en la cual almacena la lista opciones
/*   List<Widget> _crearItems() {

    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)
           ..add(Divider()); // es lo mismo que poner despues lista.add(Divider()); 
      
    }

    return lista;
  } */

  // Metodo para crear lo mismo que en el metodo de arriba pero de forma mas corta
  List<Widget> _crearItemsCorta() {
    
    return opciones.map((item) {
      
      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.access_alarms),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider()
        ],
      );
    }).toList();

  }
}