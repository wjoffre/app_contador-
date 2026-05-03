import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador V1.0',
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      home: MyHomePage(title: 'Contador'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _contador = 0;

  void _incrementoContador() {
    setState(() {
      _contador++;
    });
  }

  void _decrementoContador() {
    setState(() {
      _contador--;
    });
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              const Text('Pressione o botão várias vezes:'),
              Text(
                '$_contador',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
        mainAxisAlignment: .center,
          children: [
            FloatingActionButton(
              onPressed: _incrementoContador,
              tooltip: 'Incremento',
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: _decrementoContador,
              tooltip: 'decremento',
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      );
    }
  }