import 'package:flutter/material.dart';
import 'package:pomodoro__flutter/pages/Pomodoro.dart';

import 'package:provider/provider.dart';
import './store/pomodoro.store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData tema = ThemeData();

    return MultiProvider(
      providers: [
        Provider<PomodoroStore>(
          create: (_) => PomodoroStore(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: tema.copyWith(
            colorScheme: tema.colorScheme.copyWith(
          primary: Colors.indigo,
          secondary: Colors.cyan,
        )),
        home: const Pomodoro(),
      ),
    );
  }
}

// import 'package:flutter_mobx/flutter_mobx.dart';
// import 'package:pomodoro/store/contador.store.dart';

// final store = ContadorStore();

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Contador'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Observer(
//               builder: (_) => Text(
//                 '${store.contador}',
//                 style: Theme.of(context).textTheme.headline4,
//               ),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//  backgroundColors: Theme.of(context).colorScheme.secondary;
//         onPressed: store.incrementar,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: Text('data'),
          style: TextButton.styleFrom(
            backgroundColor: Colors.black, 
            foregroundColor: Colors.white,
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('data'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
