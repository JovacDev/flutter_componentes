import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30,
          ),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('Esta es la descripción de la tarjeta'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                onPressed: () {}, 
                child: Text('Cancelar')
              ),
              FlatButton(
                onPressed: () {}, 
                child: Text('Ok')
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipo2() {

    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget> [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'), 
            image: NetworkImage('https://i.redd.it/tk46u5nrkxm21.png'),
            fadeInDuration: Duration( milliseconds: 200),
            height: 300,
            fit: BoxFit.cover,
          ),
          /* Image(
            image: NetworkImage('https://i.redd.it/tk46u5nrkxm21.png'),
          ), */
          Container(
            padding: EdgeInsets.all(10),
            child: Text('No tengo idea de que poner')
          ),
        ],
      ),
    );

      return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}