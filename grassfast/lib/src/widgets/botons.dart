import 'package:flutter/material.dart';

SizedBox botons(BuildContext context,
    {required String texto, required String pagina}) {
  return SizedBox(
    width: 262,
    height: 50,
    child: ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, pagina);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.green),
      ),
      child: Text(
        texto,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
