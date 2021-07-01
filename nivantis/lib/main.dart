
import 'package:flutter/material.dart';
<<<<<<< Updated upstream
import 'package:firedart/firedart.dart';
import 'package:nivantis/Models/Medicament.dart';
import 'preferences_store.dart';
=======
import 'package:get/get.dart';
import 'package:nivantis/presentation/navigation/navigation.dart';
import 'package:nivantis/presentation/widgets/navAppBar.dart';
>>>>>>> Stashed changes

import 'presentation/views/version1/version1_view.dart';

void main() {
  GetMaterialApp(
      title: 'titre',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Main(),
      home: Version1View(),
      initialRoute: "/",
      getPages: Nav.routes,
  );
}

<<<<<<< Updated upstream
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() async {
    var firebaseAuth = FirebaseAuth.initialize(
        'AIzaSyAnXJ-R3GbZ7saYELcjA7qYo2BdEC8U9_I',
        await PreferencesStore.create());
    var firestore = Firestore('nivantis-80b50', auth: firebaseAuth);
    await firebaseAuth.signIn('admin@nivantis.fr', 'JeSuisLAdminDeNivantis_01');
    var user = await firebaseAuth.getUser();
    print(user.email);
    var collection = await firestore.collection("Medicaments").get();
    List<Medicament> list = [];

    collection.forEach((Document element) {
      var medicament = Medicament.fromMap(element.map, element.id);
      list.add(medicament);
    });
    print(list[0].name);
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

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
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
=======
Widget Main() {
  print("1");
  return Column(
    children: [  
      navAppBar(),
      Scaffold(
        body: Center(
          child: Text("main")
>>>>>>> Stashed changes
        ),
      )
    ]
  );
}