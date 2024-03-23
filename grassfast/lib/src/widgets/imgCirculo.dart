import 'package:flutter/material.dart';

Container imgCirculo() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image/login.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }