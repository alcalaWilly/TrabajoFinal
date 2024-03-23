import 'package:flutter/material.dart';
import 'package:grassfast/src/pages/canchas.dart';
import 'package:grassfast/src/pages/inicio.dart';
import 'package:grassfast/src/pages/registro.dart';
import 'package:grassfast/src/pages/login.dart';

Map<String, WidgetBuilder> rutas = {
  'Inicio': (context) => const Inicio(),
  'Registro': (context) => const Registro(),
  'Login': (context) => const Login(),
  'Canchas': (context) => const Canchas(),
};