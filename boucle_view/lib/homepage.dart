import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> langs = ['en-EN', 'fr-FR', 'es-ES'];
  List<String> countries = ['England', 'France', 'Spain'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: ListView.builder(
              itemCount: langs.length,
              itemBuilder: (ctx, i) {
                return InkWell(
                    // ignore: avoid_print
                    onTap: () => print("$i selected"),
                    child: ListTile(
                        title: Text(
                      countries[i],
                      style: const TextStyle(color: Colors.white),
                    )));
              })),
    );
  }
}
