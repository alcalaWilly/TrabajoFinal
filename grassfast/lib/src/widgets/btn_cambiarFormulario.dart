import 'package:flutter/material.dart';

Expanded btn_cambiarFormulario(BuildContext context, {required String texto, required String pagina}) {
    return Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, pagina);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child:  Text(
                            texto,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
  }