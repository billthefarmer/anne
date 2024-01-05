import 'package:flutter/material.dart';

void main() {
  runApp(const AnneApp());
}

class AnneApp extends StatelessWidget {
  const AnneApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anne',
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: const Anne(title: 'Anne'),
    );
  }
}

class Anne extends StatelessWidget {
  const Anne({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/anne.png'),
              ),
              Text(title, style: Theme.of(context).textTheme.headlineLarge),
            ],
          ),
        ),
      ),
    );
  }
}
