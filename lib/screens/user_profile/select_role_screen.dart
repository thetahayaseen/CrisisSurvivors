import 'package:crisis_survivors/data/enums/role.dart';
import 'package:crisis_survivors/screens/user_profile/get_basic_information_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectRoleScreen extends StatelessWidget {
  const SelectRoleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final roles = [
      {
        'label': 'Become a Donor',
        'image': 'assets/Donor.png',
        'role': Role.donor,
      },
      {
        'label': 'Request for Donations',
        'image': 'assets/Victim.png',
        'role': Role.victim,
      },
      {
        'label': 'Apply for Consultancy',
        'image': 'assets/Consultant.png',
        'role': Role.consultant,
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF2EDF6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(size),
            Text(
              "Would You Like to...",
              style: GoogleFonts.poppins(
                fontSize: size.width / 19.5,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: size.height * 0.04),
            ...roles.map((item) => Padding(
                  padding: EdgeInsets.only(bottom: size.height * 0.05),
                  child: _buildRoleButton(
                    context,
                    label: item['label'] as String,
                    image: item['image'] as String,
                    role: item['role'] as Role,
                    size: size,
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(Size size) {
    return SizedBox(
      width: double.infinity,
      height: size.height / 5.2,
      child: Stack(
        children: [
          Positioned(
            top: -20,
            left: -100,
            child: _circle(200, 180, const Color.fromARGB(120, 125, 105, 108)),
          ),
          Positioned(
            top: -100,
            left: -5,
            child: _circle(180, 200, const Color.fromARGB(145, 109, 91, 91)),
          ),
        ],
      ),
    );
  }

  Widget _circle(double width, double height, Color color) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }

  Widget _buildRoleButton(
    BuildContext context, {
    required String label,
    required String image,
    required Role role,
    required Size size,
  }) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => GetBasicInformationScreen(role: role),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        elevation: 4,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      ),
      child: Row(
        children: [
          SizedBox(
            width: size.width * 0.3,
            height: size.height * 0.13,
            child: Image.asset(image, fit: BoxFit.contain),
          ),
          SizedBox(width: size.width * 0.05),
          SizedBox(
            height: size.height * 0.13,
            child: Center(
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: size.width / 21,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(194, 86, 61, 61),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
