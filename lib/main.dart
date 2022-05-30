import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      // debugShowCheckedModeBanner: false,
      title: 'Flutter Stateful Clicker Counter',
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Generacion 19-22'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3999EF),
        automaticallyImplyLeading: false,
        title: Text(
          'Agregando Bordes APP de Barandiaran',
        ),
        actions: [],
        centerTitle: false,
        elevation: 40,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 30, 50, 30),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFF4DA4F0),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFF94C7F6),
                      width: 5,
                    ),
                  ),
                  child: Text(
                    'Jonathan Abraham Barandiaran Leyva',
                  ),
                ),
              ),
              Divider(
                height: 50,
                thickness: 5,
                indent: 80,
                endIndent: 80,
              ),
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.network(
                  'https://raw.githubusercontent.com/Jonathan-Barandiaran/Imagen-Proyecto/main/Yo.jpg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Divider(
                height: 50,
                thickness: 5,
                indent: 80,
                endIndent: 80,
                color: Color(0xFF39D2C0),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 30, 50, 30),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFF4DA4F0),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFF94C7F6),
                      width: 5,
                    ),
                  ),
                  child: Text(
                    '6to. I Programacion',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
