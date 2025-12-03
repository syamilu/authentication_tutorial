import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import './todolist/todo_page.dart';

// add logout button
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Home Screen'),
      //   actions: [
      //     IconButton(
      //       onPressed: () => FirebaseAuth.instance.signOut(),
      //       icon: const Icon(Icons.logout),
      //     ),
      //   ],
      // ),
      // add my name from firebase auth
      body: TodoPage(),
    );
  }
}
