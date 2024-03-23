import 'package:flutter/material.dart';

TextFormField cajaContenido(BuildContext context, {required String icono, required String dato}) {
  IconData? customIcon;

  bool obscureTextValue = false;
  switch (icono) {
    case 'persona':
      customIcon = Icons.person;
      break;
    case 'contraseña':
      customIcon = Icons.lock;
      obscureTextValue = true;
      break;
    case 'celular':
      customIcon = Icons.phone;
      break;
    case 'buscar':
      customIcon = Icons.search;
      break;
    
    default:
      customIcon = Icons.error; 
  }

  return TextFormField(
    decoration: InputDecoration(
      hintText: dato,
      border: OutlineInputBorder(),
      prefixIcon: Icon(customIcon),
    ),
    obscureText: obscureTextValue,
  );
}