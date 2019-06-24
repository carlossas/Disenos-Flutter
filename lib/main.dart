import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//Pages
import 'package:disenos/src/pages/basico_page.dart';
import 'package:disenos/src/pages/botones_pages.dart';
import 'package:disenos/src/pages/scroll_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Cambiar el color de la barra de estatus del dispositivo, dependiendo del S.0
    if (Platform.isAndroid) {
      // Aqui va el transparent
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
      ));
    } else if (Platform.isIOS) {
      // Aqui el white
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.white,
      ));
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      //Rutas
      initialRoute: 'botones',
      routes: {
        'basico': (BuildContext context) => BasicoPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'botones': (BuildContext context) => BotonesPage(),
      },
    );
  }
}
