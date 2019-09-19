import 'dart:async';

import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  ScrollController _scrollController = new ScrollController();
  List<int> _listaNumeros = new List();
  int _ultimoNumero = 0;
  bool _isLoading = false;

/*****
 el initState inicia cuando 
 se crea la pagina
*****/
  @override
  void initState() {
    super.initState();
    _agregar10();
    _scrollController.addListener((){
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        // _agregar10();
        _fetchData();
      }
    });
  }

/*****
 el dispose se ejecuta cuando 
 se sale de la pagina
*****/
  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Ejemplo"),
      ),
      body: Stack(
        children: <Widget>[
          _crearListas(),
          _crarLoading()
        ],
      )
    );
  }

  Widget _crearListas(){
    return RefreshIndicator(
      child: ListView.builder(
        itemCount: _listaNumeros.length,
        controller: _scrollController,
        itemBuilder: (BuildContext context, int index){
        
          final imagen = _listaNumeros[index];

          return FadeInImage(
            image: NetworkImage('https://picsum.photos/500/300?random=$imagen'),
            placeholder: AssetImage("assets/jar-loading.gif")
          );
        },
      ),
      onRefresh: _onRefresh,
    );
  }
  

  _agregar10(){
    for (var i = 0; i < 10; i++) {
      _ultimoNumero++;
      _listaNumeros.add(_ultimoNumero);
    }

    setState(() {
      
    });
  }

  Future<Null> _fetchData() async{

    _isLoading = true;
    setState(() {});

    final duration = new Duration(seconds: 2);
    new Timer(duration, peticionHttp);

  }

  void peticionHttp(){
    _isLoading = false;
    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 250)
    );
    _agregar10();
  }

  Widget _crarLoading(){
    if(_isLoading){
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator()
            ],
          ),
          SizedBox( height: 15.0,)
        ],
      );
    } else {
      return Container();
    }
  }

  Future<void> _onRefresh() async {
    final duration = Duration(seconds: 2);
    
    new Timer(duration, (){
      _listaNumeros.clear();
      _ultimoNumero++;
      _agregar10();
    });

    return Future.delayed(duration);
  }
}