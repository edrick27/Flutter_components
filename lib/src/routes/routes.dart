import 'package:componentes2/src/pages/card_page.dart';
import 'package:flutter/material.dart';

import 'package:componentes2/src/pages/avatar_page.dart';
import 'package:componentes2/src/pages/alert_pag.dart';
import 'package:componentes2/src/pages/home_page.dart';

Map<String, WidgetBuilder> getRoutes(){

  return <String, WidgetBuilder>{
        '/' : (BuildContext context) => HomePage(),
        'alert' : (BuildContext context) => AlertPage(),
        'avatar' : (BuildContext context) => AvatarPage(),
        'card' : (BuildContext context) => CardPage(),
  };
}