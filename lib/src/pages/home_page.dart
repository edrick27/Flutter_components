import 'package:flutter/material.dart';

import 'package:componentes2/src/utils/icon_string_util.dart';
import 'package:componentes2/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("APP components")
        ), 
        body: _lista()
    );
  }
        
  Widget _lista() {


    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
        
        return ListView(
          children: listaItems(snapshot.data, context),
        ); 
     
      }
    );
  }
  
  List<Widget> listaItems(data, context) {
    
    List<Widget> lista = [];

    data.forEach((item){
      final widgetTemp = ListTile( 
        title: Text(item["texto"]),
        leading: getIcon(item["icon"]),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue[200]),
        onTap: (){
          Navigator.pushNamed(context, item["ruta"]);
          // final route = MaterialPageRoute(
          //   builder: (context){
          //     return AlertPage();
          //   }
          // );
          // Navigator.push(context, route);

        },
      );

      lista.add(widgetTemp);
      lista.add(Divider());
    });

    return lista;
  }
}


