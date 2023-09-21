import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import './pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: 'AIzaSyAoV8UKoahiCptWZw106K2sV7cK4lzMuRc',
      appId: '1:602875855467:android:92d3cfd1dfde7b8599e72e',
      messagingSenderId: '602875855467',
      projectId: 'azaza-puppy',
      storageBucket: 'azaza-puppy.appspot.com',
    ),
  );
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DOGGARDEN',
      home: LogIn(),
    );
  }
}
