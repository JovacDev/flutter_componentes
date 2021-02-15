import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 300.0;
  bool _bloquearCheck = false;
  bool _bloquearSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen()
            )
          ],
        )
      ),
    );
  }

  Widget _crearSlider() {

    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      // divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0, 
      onChanged: ( _bloquearCheck ) ? null : (valor) {
        setState(() {
          _valorSlider = valor;
        });
      }
    );

  }

  Widget _checkBox() {
    /* return Checkbox(
      value: _bloquearCheck, 
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      }
    ); */

    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck, 
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      }
    );
  }

  Widget _crearSwitch() {

    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _bloquearSwitch, 
      onChanged: (valor) {
        setState(() {
          _bloquearSwitch = valor;
        });
      }
    );
  }

  Widget _crearImagen() {

    return FadeInImage(
      placeholder: AssetImage('assets/jar-loading.gif'),
      image: NetworkImage('https://static.wikia.nocookie.net/adventuretimewithfinnandjake/images/f/f3/Original_Finn.png/revision/latest/scale-to-width-down/340?cb=20200424114126'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );

  }
}