import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MAD_PWD',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('MAD_PWD Experiment 01'),
      ),
      body: Center(
        child: Container(
          // width: 256,
          height: 256,
          color: Colors.blue,
          child: Column(children: [
            Image.asset(
              'assets/images/FlutterLogo.png',
              width: 180,
            ),
            const Text(
              'This text is inside container',
              style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 20,
                  fontWeight: FontWeight.normal),
            ),
            ElevatedButton(
              onPressed: () {
                print('Clicked Elevated Button');
              },
              child: const Text('Click This Button'),
            ),
          ]),
        ),
      ),

      //     child:  Center(
      //       // child: Text(
      //       //   'This text is inside container',
      //       //   style:TextStyle(
      //       //       color: Colors.black,
      //       //       fontSize: 26,
      //       //       fontWeight: FontWeight.bold
      //       //   ),
      //       // ),
      //       // child: ElevatedButton(
      //       //   child: Text(
      //       //     'Elevated Button'
      //       //   ),
      //       //   onPressed: (){
      //       //     print('pressed');
      //       //   },
      //       // ),
      //       child: Image.asset('assets/images/FlutterLogo.png',
      //       height: 200,)
      //     ),
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Clicked floating button");
        },
        tooltip: 'Increment',
        child: const Text(
          'Click Here',
          textAlign: TextAlign.center,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
