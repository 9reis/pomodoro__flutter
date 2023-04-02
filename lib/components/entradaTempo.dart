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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          this.titulo,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                primary: Colors.red,
              ),
              onPressed: () {},
            ),
            Text(
              '${this.valor} min',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            ElevatedButton(
              child: Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                primary: Colors.red,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
