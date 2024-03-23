import 'package:flutter/material.dart';
import 'package:grassfast/src/widgets/fondo.dart';
import 'package:grassfast/src/widgets/loginButton.dart';
import 'package:grassfast/src/widgets/pregunta.dart';
import 'package:grassfast/src/widgets/titulo.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
  fit: StackFit.expand,
  children: [
    fondo(),
    titulo(context, titulo: 'GrassFast'),
    loginButton(context, texto: 'Login'),
    pregunta(context),
  ],
),
    );
  }
}
