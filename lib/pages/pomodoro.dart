import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pomodoro__flutter/components/cronometro.dart';
import 'package:pomodoro__flutter/components/entradaTempo.dart';
import 'package:pomodoro__flutter/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text('Pomodoro'),
          Expanded(
            child: Cronometro(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                EntradaTempo(
                  titulo: 'Trabalho',
                  valor: store.tempoTrabalho,
                ),
                EntradaTempo(
                  titulo: 'Descanso',
                  valor: store.tempoDescanso,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
