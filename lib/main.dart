import 'package:flutter/material.dart';


import 'package:componentes2/src/pages/alert_pag.dart';
import 'package:componentes2/src/routes/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'APP de Componentes',
      // home: HomePage()
      initialRoute: '/',
      routes: getRoutes(),
      onGenerateRoute: ( RouteSettings settings){
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
        );
      },
    );
  }
}