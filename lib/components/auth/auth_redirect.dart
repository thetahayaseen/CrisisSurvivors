import 'package:crisis_survivors/data/enums/role.dart';
import 'package:crisis_survivors/data/models/user_profile/user_profile.dart';
import 'package:crisis_survivors/data/services/user_profile_service.dart';
import 'package:crisis_survivors/screens/home_screen.dart';
import 'package:crisis_survivors/screens/user_profile/select_role_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthGateRedirect extends StatefulWidget {
  const AuthGateRedirect({super.key});

  @override
  State<AuthGateRedirect> createState() => _AuthGateRedirectState();
}

class _AuthGateRedirectState extends State<AuthGateRedirect> {
  
  final _userProfileService = UserProfileService();

  @override
  void initState(){
    super.initState();
    Future.microtask(() => handleRedirection());
  }

  Future<void> handleRedirection() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if(currentUser == null) return;

    List<UserProfile> userProfiles = await _userProfileService.getProfilesWhere("userId", currentUser.uid);
    if(!mounted) return;

    if(userProfiles.isEmpty){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const SelectRoleScreen()));
      return;
    }

    final currentUserProfile = userProfiles.first;

    if(currentUserProfile.role == Role.unassigned){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const SelectRoleScreen()));
      return;
    }
    else {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
      return;
    }
  
  }
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator(),),
    );
  }
}