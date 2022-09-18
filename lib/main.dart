import 'package:advancedui/posts_page.dart';
import 'package:advancedui/provider/main_them.dart';
import 'package:advancedui/provider/theme_provider.dart';
import 'package:advancedui/provider_ex/home.dart';
import 'package:advancedui/provider_ex/them_provider_ex.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => ThemProviderEX()),
          ],
          child:

      MyApp()));
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Consumer<ThemProviderEX>(
       builder: (context, themeProviderEx, child) {
         return

      MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Postspage(),
    );});
  }
}


//class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider<ThemeProvider>(
//       create: (context) => ThemeProvider(),
//       child: Consumer<ThemeProvider>(
//         builder: (context, themeProvider, child) => MaterialApp(
//           title: 'Flutter Provider Demo',
//           theme: ThemeData(
//             primarySwatch: Colors.blue,
//             appBarTheme: AppBarTheme(brightness: Brightness.dark),
//           ),
//           home: MainScaffold(),
//         ),
//       ),
//     );
//   }
// }
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  Color _color = Colors.yellow;

  @override
  Widget build(BuildContext context) {

   double height =  MediaQuery.of(context).size.height;
   double width =  MediaQuery.of(context).size.width;


    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
      child:

        AnimatedContainer(duration: Duration(seconds: 3),
          color: _color,

          child: Column(
            children: [
              TextFormField(


              ),
              ElevatedButton(

                style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                    padding: const EdgeInsets.symmetric(horizontal: 49, vertical: 20),
                    textStyle: TextStyle(
                        fontSize: 29,
                        fontWeight: FontWeight.bold)), onPressed: () {

                setState(() {
                  _color = Colors.brown;
                });
              }, child: Text("brown"),
              ),
              SizedBox(height: 30,),
              ElevatedButton(

                style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                    padding: EdgeInsets.symmetric(horizontal: 49, vertical: 20),
                    textStyle: TextStyle(
                        fontSize: 29,
                        fontWeight: FontWeight.bold)), onPressed: () {

                setState(() {
                  _color = Colors.orange;
                });
              }, child: Text("orange"),
              )
            ],
          )
        ,
          
          
        ))
          

         ,


      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
