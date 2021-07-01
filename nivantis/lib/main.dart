import 'package:flutter/material.dart';
// import 'package:firedart/firedart.dart';
// import 'package:nivantis/Models/Medicament.dart';
// import 'preferences_store.dart';
import 'package:get/get.dart';
import 'package:nivantis/presentation/navigation/navigation.dart';
import 'package:nivantis/presentation/widgets/navAppBar.dart';

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

// void _incrementCounter() async {
//   var firebaseAuth = FirebaseAuth.initialize(
//       'AIzaSyAnXJ-R3GbZ7saYELcjA7qYo2BdEC8U9_I',
//       await PreferencesStore.create());
//   var firestore = Firestore('nivantis-80b50', auth: firebaseAuth);
//   await firebaseAuth.signIn('admin@nivantis.fr', 'JeSuisLAdminDeNivantis_01');
//   var user = await firebaseAuth.getUser();
//   print(user.email);
//   var collection = await firestore.collection("Medicaments").get();
//   List<Medicament> list = [];

//   collection.forEach((Document element) {
//     var medicament = Medicament.fromMap(element.map, element.id);
//     list.add(medicament);
//   });
//   print(list[0].name);
//   setState(() {
//     // This call to setState tells the Flutter framework that something has
//     // changed in this State, which causes it to rerun the build method below
//     // so that the display can reflect the updated values. If we changed
//     // _counter without calling setState(), then the build method would not be
//     // called again, and so nothing would appear to happen.
//     _counter++;
//   });
// }

Widget Main() {
  print("1");
  return Column(children: [
    navAppBar(),
    Scaffold(
      body: Center(child: Text("main")),
    )
  ]);
}
