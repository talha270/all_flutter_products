import 'package:all_flutter_tutorial/Firebase_tutorial/database_crud.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../firebase_options.dart';
import 'authentication.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Fireapp());
}

class Fireapp extends StatelessWidget{
  const Fireapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Firebase App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        primarySwatch: Colors.red
      ),
      home:
      // const AuthenicatedFire(),
      StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if(snapshot.hasData){
              return const DatabaseCrud();
            }
            else{
              return const AuthenicatedFire();
            }
          },)
    );
  }
}
