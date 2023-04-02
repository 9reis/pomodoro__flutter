import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EntradaTempo extends StatelessWidget {
  const EntradaTempo({
    Key? key,
    required this.titulo,
    required this.valor,
  }) : super(key: key);

  final String titulo;
  final int valor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(this.titulo),
        Text('${this.valor}'),
      ],
    );
  }
}
