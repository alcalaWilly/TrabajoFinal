import 'package:flutter/material.dart';

Positioned loginButton(BuildContext context, { required String texto}) {
    return Positioned(
          bottom: 100,
          left: 16,
          right: 16,
          child: SizedBox(
            width: 308,
            height: 58,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'Login');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Color.fromARGB(255, 44, 185, 79),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              child:  Text(
                texto,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        );
  }