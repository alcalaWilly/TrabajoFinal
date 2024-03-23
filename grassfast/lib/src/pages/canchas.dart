import 'package:flutter/material.dart';
import 'package:grassfast/src/widgets/cajaContenido.dart';
import 'package:grassfast/src/widgets/canchaCarta.dart';
import 'package:grassfast/src/widgets/titulo.dart';

class Canchas extends StatelessWidget {
  const Canchas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F3),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 100,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'Inicio');
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                      ),
                      child: Text(
                        'Salir',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.person_rounded,
                    color: Color.fromARGB(255, 0, 0, 0),
                    size: 50,
                  ),
                ],
              ),
              titulo(context, titulo: 'GrassFast'),
              SizedBox(height: 35),
              Text(
                'Todas las canchas de Satipo:', // "\S/. 20"
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 35),
              // Utilizando Expanded para dividir en dos columnas
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        cajaContenido(context, icono: 'buscar', dato: 'Buscar'),
                        SizedBox(height: 20),
                        canchaCarta(context,
                            linckImagen: 'assets/image/grass.png',
                            titulo: 'El Golazo',
                            descripcion: 'AV. Augusto B. Leguia 1245',
                            precio: 'S/. 20'),
                        SizedBox(height: 47),
                        canchaCarta(context,
                            linckImagen: 'assets/image/grass.png',
                            titulo: 'El Carajo',
                            descripcion: 'Dirección de otro lugar',
                            precio: 'S/. 30'),
                        SizedBox(height: 47),
                        canchaCarta(context,
                            linckImagen: 'assets/image/grass.png',
                            titulo: 'Balón de oro',
                            descripcion: 'Dirección de otro lugar',
                            precio: 'S/. 30'),
                        SizedBox(height: 120),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        canchaCarta(context,
                            linckImagen: 'assets/image/grass.png',
                            titulo: 'Bonbonera',
                            descripcion: 'AV. Augusto B. Leguia 1245',
                            precio: 'S/. 20'),
                        SizedBox(height: 47),
                        canchaCarta(context,
                            linckImagen: 'assets/image/grass.png',
                            titulo: 'La pichanga',
                            descripcion: 'Dirección de otro lugar',
                            precio: 'S/. 30'),
                        SizedBox(height: 47),
                        canchaCarta(context,
                            linckImagen: 'assets/image/grass.png',
                            titulo: 'El rayo',
                            descripcion: 'Dirección de otro lugar',
                            precio: 'S/. 30'),
                        SizedBox(height: 47),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
