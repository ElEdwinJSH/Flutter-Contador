//sera un statefull widget
import 'package:flutter/material.dart';

//se pude poner stf para stateful
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});
//con alt se deja puesto para escribir en varios lugares
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //variable contador
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
      ),
      body: Center(
        //va a dar error jja

        //cntrl + .,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$contador', //add cinst everywere, ahora cambiamos el 54 por el contador
              style: const TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.w200,
                  color: Colors.indigoAccent),
            ),
            Text(
              'click${contador == 1 ? '' : 's'}', //forma de hacer un if
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: Colors.indigoAccent,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          /* FloatingActionButton(
            shape: StadiumBorder(),
            onPressed: () {
              setState(() {
                contador++;
              });
            },
            child: Icon(Icons.plus_one),
          ),*/

          CustomButton(
            onPressed: () {
              setState(() {
                contador++;
              });
            },
            icono: Icons.plus_one,
          ),
          FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: () {
              setState(() {
                //if(contador == 0) return;--esto hace que en el return o sea no pasa a lo que no hay mas abajo
                if (contador == 0) {
                } else {
                  contador--;
                }
              });
            },
            child: Icon(Icons.exposure_minus_1_rounded),
          ),
          FloatingActionButton(
            //esta propiedad es ripiedad de scaffold recordar
            shape: const StadiumBorder(),
            onPressed: () {
              setState(() {
                contador = 0;
              });
            },
            child: Icon(Icons.refresh_rounded),
          )
        ],
      ),
    ); //scaffold nos pone un app bar, da un body, uede poner botones y barras abajo
  }
}

class CustomButton extends StatelessWidget {
  final IconData icono;
  final VoidCallback?
      onPressed; //el signo de interrogacion indica que es opcional
  const CustomButton(
      {super.key,
      required this.icono,
      this.onPressed}); //contorl + punto para agregar propieddades

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icono),
    );
  }
}
