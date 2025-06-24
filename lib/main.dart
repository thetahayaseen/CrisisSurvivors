import "package:cloud_firestore/cloud_firestore.dart";
import "package:crisis_survivors/components/auth/auth_gate.dart";
import "package:flutter/material.dart";
import "package:firebase_core/firebase_core.dart";
import "package:crisis_survivors/firebase_options.dart";
import "package:flutter_dotenv/flutter_dotenv.dart";
import "package:supabase_flutter/supabase_flutter.dart";

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseFirestore.instance.settings = const Settings(
    persistenceEnabled: true,
  );

  await Supabase.initialize(url: dotenv.env["SUPABASE_URL"]!, anonKey: dotenv.env["SUPABASE_ANON_KEY"]!);

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Crisis Survivors",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      // AuthGate as a Barrier to determine User's Auth Status
      home: const AuthGate(),
    );
  }
}