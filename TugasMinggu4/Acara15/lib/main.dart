import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'Flutter App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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
    //Widget utama Flutter
    return Scaffold(

      appBar: AppBar(
        title: Text(widget.title),
        //Properti Widget
        backgroundColor: Color.fromRGBO(129, 129, 129, 1),

      ),
      //Container
      body: Container(

        padding: EdgeInsets.all(32.0),
        margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.black12),

        //Widget dalam Widget
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          //Properti Children
          children: <Widget>[

            //Image asset lokal
            Image.asset('assets/images/bgApp.jpg', height: 200),

            //FormField
            TextFormField(
              decoration: InputDecoration(hintText: "Username"),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(hintText: "Password"),
            ),
            RaisedButton(
              color: Colors.lightGreen,
              child: Text("Login"),
              onPressed: () {},
            ),

            //Widget Text
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),

            //Widget Button
            RaisedButton(
              color: Colors.amber,
              child: Text("Raised Button"),
              onPressed: () {},
            ),
            MaterialButton(
              color: Colors.lime,
              child: Text("Material Button"),
              onPressed: () {},
            ),
            FlatButton(
              color: Colors.lightGreenAccent,
              child: Text("FlatButton Button"),
              onPressed: () {},
            ),

            //Widget Icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                    children: <Widget>[
                      Icon(Icons.access_alarm),
                      Text('Alarm')
                    ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.phone),
                    Text('Phone')
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.book),
                    Text('Book')
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add), //Widget Icon
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
