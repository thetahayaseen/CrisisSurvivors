import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute<ProfileScreen>(
                      builder: (context) => ProfileScreen(
                            appBar: AppBar(
                              title: const Text("Profile Screen"),
                            ),
                            actions: [
                              SignedOutAction((context) {
                                Navigator.of(context).pop();
                              })
                            ],
                          )));
            },
          )
        ],
        automaticallyImplyLeading: true,
      ),
      body: const Center(
        child: Column(
          children: [
            const Text("Welcome!"),
            const SignOutButton(),
          ],
        ),
      ),
    );
  }
}
