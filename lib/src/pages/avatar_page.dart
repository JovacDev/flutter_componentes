import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(7.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://cdn4.iconfinder.com/data/icons/profession-avatar-5/64/29-programmer-512.png'),
              radius: 25.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'), 
          image: NetworkImage('https://miro.medium.com/max/3202/1*L5IJM6n8N4wiwqRgoZrWaw.png'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}