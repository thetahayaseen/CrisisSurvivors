import "dart:io";
import "package:crisis_survivors/data/enums/gender.dart";
import "package:crisis_survivors/data/enums/marriage_status.dart";
import "package:crisis_survivors/data/enums/role.dart";
import "package:crisis_survivors/data/models/bank_account/bank_account.dart";
import "package:crisis_survivors/data/models/user_profile/user_profile.dart";
import "package:crisis_survivors/data/services/firestore/user_profile_service.dart";
import "package:crisis_survivors/utils/extensions/enum_extensions.dart";
import "package:crisis_survivors/widgets/base_text_field.dart";
import "package:crisis_survivors/widgets/base_dropdown.dart";
import "package:crisis_survivors/widgets/base_date_picker.dart";
import "package:file_picker/file_picker.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class GetBasicInformationScreen extends StatefulWidget {
  const GetBasicInformationScreen({super.key, required this.role});
  final Role role;
  
  @override
  State<GetBasicInformationScreen> createState() => _GetBasicInformationScreenState();
}

class _GetBasicInformationScreenState extends State<GetBasicInformationScreen> {

  late final UserProfileService _userProfileService;

  late String userId;

  bool isButtonClicked = false;

  final _nameController = TextEditingController();
  final _contactController = TextEditingController();
  final _emailController = TextEditingController();

  final _bankController = TextEditingController();
  final _branchCodeController = TextEditingController();
  final _accountNumberController = TextEditingController();

  DateTime? _selectedDate;
  String? selectedGender;
  String? selectedMarriageStatus;
  File? selectedProfilePicture;

  @override
  void initState() {
    super.initState();

    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      userId = currentUser.uid;
      _emailController.text = currentUser.email ?? "";
    }

    _userProfileService = UserProfileService();
    
  }

  @override
  void dispose() {
    _nameController.dispose();
    _contactController.dispose();
    _emailController.dispose();
    _bankController.dispose();
    _branchCodeController.dispose();
    _accountNumberController.dispose();
    super.dispose();
  }

  Future<void> _pickProfilePicture() async {
    final result = await FilePicker.platform.pickFiles(type: FileType.image);
    if (result != null) {
      setState(() {
        selectedProfilePicture = File(result.files.single.path!);
      });
    }
  }

  Future<void> _submit() async {
    setState(() => isButtonClicked = true);

    if (_nameController.text.isEmpty ||
        _contactController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _selectedDate == null ||
        selectedGender == null ||
        selectedMarriageStatus == null ||
        _bankController.text.isEmpty ||
        _branchCodeController.text.isEmpty ||
        _accountNumberController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please fill all the fields!")),
      );  

    String? profilePictureUrl;
    if (selectedProfilePicture != null) {
      profilePictureUrl = await _userProfileService.uploadProfilePicture(
        userId: userId, profilePicture: selectedProfilePicture!
      );
    }

    num accountNumber = num.parse(_accountNumberController.text); 

      final userProfile = UserProfile(
      id: "",
      userId: userId,
      role: widget.role,
      name: _nameController.text,
      email: _emailController.text,
      contactNumber: _contactController.text,
      gender: Gender.values.byPascalCase(selectedGender!), 
      dateOfBirth: _selectedDate!,
      marriageStatus: MarriageStatus.values.byPascalCase(selectedMarriageStatus!),
      bankAccountDetails: BankAccountDetails(
        bank: _bankController.text,
        branchCode: _branchCodeController.text,
        accountNumber: accountNumber,
      ),
      profilePicture: profilePictureUrl,
    );
    
    if (!mounted) return;

   showDialog(
    context: context,
    barrierDismissible: false,
    builder: (_) => const Center(child: CircularProgressIndicator()),
  );

  await _userProfileService.createOrUpdateProfile(userProfile);

  if (mounted) Navigator.of(context).pop();   
  }
}

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFF2EDF6),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "BASIC INFORMATION",
                style: GoogleFonts.poppins(
                  fontSize: width / 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 24),

            BaseTextField(
              controller: _nameController,
              label: "Full Name",
              hintText: "Enter your full name",
              isRequired: true,
              isButtonClicked: isButtonClicked,
              width: width,
            ),
            const SizedBox(height: 16),

            BaseTextField(
              controller: _contactController,
              label: "Contact Number",
              hintText: "Enter phone number",
              isRequired: true,
              isButtonClicked: isButtonClicked,
              width: width,
            ),
            const SizedBox(height: 16),

            BaseTextField(
              controller: _emailController,
              label: "Email",
              hintText: "Enter email",
              isRequired: true,
              isButtonClicked: isButtonClicked,
              width: width,
            ),
            const SizedBox(height: 16),

            BaseDatePickerField(
              labelText: "Date of Birth",
              hintText: "Select your birth date",
              selectedDate: _selectedDate,
              onDateSelected: (date) => setState(() => _selectedDate = date),
              isRequired: true,
              width: width,
              height: width / 8, isButtonClicked: false,
            ),
            const SizedBox(height: 16),

            BaseDropdown(
              label: "Gender",
              items: Gender.values.pascalCaseNames,
              selectedValue: selectedGender,
              onChanged: (val) => setState(() => selectedGender = val),
              isButtonClicked: isButtonClicked,
              width: width,
            ),
            const SizedBox(height: 16),

            BaseDropdown(
              label: "Marital Status",
              items: MarriageStatus.values.pascalCaseNames,
              selectedValue: selectedMarriageStatus,
              onChanged: (val) => setState(() => selectedMarriageStatus = val),
              isButtonClicked: isButtonClicked,
              width: width,
            ),
            const SizedBox(height: 32),

            Center(
              child: Text(
                "BANK ACCOUNT DETAILS",
                style: GoogleFonts.poppins(
                  fontSize: width / 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 24),

            BaseTextField(
              controller: _bankController,
              label: "Bank Name",
              hintText: "Enter bank name",
              isRequired: true,
              isButtonClicked: isButtonClicked,
              width: width,
            ),
            const SizedBox(height: 16),

            BaseTextField(
              controller: _branchCodeController,
              label: "Branch Code",
              hintText: "Enter branch code",
              isRequired: true,
              isButtonClicked: isButtonClicked,
              width: width,
            ),
            const SizedBox(height: 16),

            BaseTextField(
              controller: _accountNumberController,
              label: "Account Number",
              hintText: "Enter account number",
              isRequired: true,
              isButtonClicked: isButtonClicked,
              width: width,
            ),
            const SizedBox(height: 30),

            Center(
              child: SizedBox(
                width: width / 1.15081081081,
                height: width / 8,           
                child: ElevatedButton.icon(
                  onPressed: _pickProfilePicture,
                  icon: const Icon(
                    Icons.upload_file,
                    color: Colors.brown,
                  ),
                  label: Text(
                    selectedProfilePicture == null ? "Upload Profile Picture" : "Change Picture",
                    style: GoogleFonts.poppins(
                      fontSize: width / 30,
                      color: Colors.brown,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(width / 1.9),
                      side: const BorderSide(color: Color.fromARGB(41, 217, 217, 217)),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),

            Center(
              child: ElevatedButton(
                onPressed: _submit,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 8),
                ),
                child: Text(
                  "Save",
                  style: GoogleFonts.poppins(
                    fontSize: width / 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
