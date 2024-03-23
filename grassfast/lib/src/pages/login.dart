import 'package:flutter/material.dart';
import 'package:grassfast/src/widgets/botons.dart';
import 'package:grassfast/src/widgets/btn_bordeButton.dart';
import 'package:grassfast/src/widgets/btn_cambiarFormulario.dart';
import 'package:grassfast/src/widgets/cajaContenido.dart';
import 'package:grassfast/src/widgets/imgCirculo.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[300], // Color de fondo plomo para todo el body
        child: Stack(
          children: [
            imgCirculo(),
            Positioned(
              top: (MediaQuery.of(context).size.height - 539) / 2,
              left: (MediaQuery.of(context).size.width - 364) / 2,
              child: Container(
                width: 364,
                height: 539,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 30),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            btn_cambiarFormulario(context, texto: 'Iniciar Sesion', pagina: 'Login'),
                            
                            btn_bordeButton(context, texto: 'Registrarce', pagina: 'Registro')
                          ],
                        ),
                      ),
                      const SizedBox(height: 100),
                      cajaContenido(context, icono: 'persona', dato: 'Usuario'),
                      const SizedBox(height: 50),
                      cajaContenido(context, icono: 'contraseña', dato: 'Contraseña'),
                      const SizedBox(height: 80),
                      botons(context, texto: 'Ingresar', pagina: 'Canchas')
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
