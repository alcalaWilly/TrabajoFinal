import 'package:flutter/material.dart';

Container fondo() {
    return Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/fondo.PNG'),
              fit: BoxFit.cover,
            ),
          ),
        );
  }