import 'package:flutter/material.dart';

import 'package:componentes2/src/pages/listView_page.dart';
import 'package:componentes2/src/pages/slider_page.dart';
import 'package:componentes2/src/pages/inputs_page.dart';
import 'package:componentes2/src/pages/card_page.dart';
import 'package:componentes2/src/pages/animated_page.dart';
import 'package:componentes2/src/pages/avatar_page.dart';
import 'package:componentes2/src/pages/alert_pag.dart';
import 'package:componentes2/src/pages/home_page.dart';

Map<String, WidgetBuilder> getRoutes(){

  return <String, WidgetBuilder>{
        '/' : (BuildContext context) => HomePage(),
        'alert'  : (BuildContext context) => AlertPage(),
        'avatar' : (BuildContext context) => AvatarPage(),
        'card'   : (BuildContext context) => CardPage(),
        'animatedContainer' : (BuildContext context) => AnimatedContainerPage(),
        'inputs' : (BuildContext context) => InputsPage(),
        'slider' : (BuildContext context) => SliderPage(),
        'list'   : (BuildContext context) => ListViewPage(),
  };
}