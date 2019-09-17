import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:componentes2/src/pages/alert_pag.dart';
import 'package:componentes2/src/routes/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
       supportedLocales: [
        const Locale('en', 'US'), // English
        const Locale('es', 'CR'), // Hebrew
      ],
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