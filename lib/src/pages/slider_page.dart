import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ejemplo de sliders")
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            _crearCheckbox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen()
            )
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      // divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearCheck) ? null : (valor) {
        setState(() {
          _valorSlider = valor;
        });
      }, 
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage("https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/main_element/public/media/image/2019/07/robert-downey-jr-como-iron-man.jpg?itok=o0FFHBt_"),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckbox() {
    // return Checkbox(
    //   value: _bloquearCheck,
    //   onChanged: (valor){
    //     setState(() {
    //       _bloquearCheck = valor;
    //     });
    //   },
    // );

    return CheckboxListTile(
      title: Text("Bloquear Slider"),
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );

  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text("Bloquear Slider"),
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );

  }
}