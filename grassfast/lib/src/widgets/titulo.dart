import 'package:flutter/material.dart';

Positioned titulo(BuildContext context,{required String titulo}) {
    return Positioned(
          top: MediaQuery.of(context).size.height * 0.3,
          left: 16,
          right: 16,
          child:  Align(
            alignment: Alignment.center,
            child: Text(
              titulo,
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: <Shadow>[
                  Shadow(
                    blurRadius: 5.0,
                    color: Color.fromARGB(255, 44, 185, 79),
                    offset: Offset(3.0, 3.0),
                  ),
                ],
              ),
            ),
          ),
        );
  }