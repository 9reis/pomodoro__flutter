import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pomodoro__flutter/components/entradaTempo.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Pomodoro'),
          EntradaTempo(
            titulo: 'Trabalho',
            valor: 25,
          ),
          EntradaTempo(
            titulo: 'Descanso',
            valor: 5,
          ),
        ],
      ),
    );
  }
}
