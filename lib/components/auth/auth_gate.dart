import 'package:crisis_survivors/components/auth/auth_redirect.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        // Constantly listen for auth changes (returns User if one is authenticated)
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }          

          if (!snapshot.hasData) {
            // If, no user data found
            return SignInScreen(
              // Providers the authentication supports
              providers: [
                EmailAuthProvider(),
                GoogleProvider(
                    clientId:
                        "225962385955-2ep46s0rbt74kgjutrk1r8s6hc3sadku.apps.googleusercontent.com"),
              ],
            );
          }

          // If user data found
          return const AuthGateRedirect();
        });
  }
}
