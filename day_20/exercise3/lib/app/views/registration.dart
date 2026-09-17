import 'package:flutter/material.dart';

class ProfileForm extends StatefulWidget {
  const ProfileForm({super.key});

  @override
  State<ProfileForm> createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  final formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final dobController = TextEditingController();
  final addressController = TextEditingController();

  String? selectedGender;

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    dobController.dispose();
    addressController.dispose();
    super.dispose();
  }

  // Date Picker
  Future<void> selectDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(2000),
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      setState(() {
        dobController.text =
        "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 247, 251, 1),

      appBar: AppBar(
        title: const Text(
          "My Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(91, 103, 241, 1),
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),

        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),

          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Form(
              key: formKey,

              child: Column(
                children: [

                  const Icon(
                    Icons.account_circle,
                    size: 65,
                    color: Color.fromRGBO(91, 103, 241, 1),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Profile Information",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 25),

                  // Full Name
                  TextFormField(
                    controller: nameController,
                    textInputAction: TextInputAction.next,

                    decoration: InputDecoration(
                      labelText: "Full Name",
                      hintText: "Enter your full name",
                      prefixIcon: const Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),

                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Name is required";
                      }

                      return null;
                    },
                  ),

                  const SizedBox(height: 15),

                  // Phone
                  TextFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.next,

                    decoration: InputDecoration(
                      labelText: "Phone",
                      hintText: "01XXXXXXXXX",
                      prefixIcon: const Icon(Icons.phone),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),

                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Phone is required";
                      }

                      return null;
                    },
                  ),

                  const SizedBox(height: 15),

                  // Date of Birth
                  TextFormField(
                    controller: dobController,
                    readOnly: true,

                    decoration: InputDecoration(
                      labelText: "Date of Birth",
                      hintText: "Select your date of birth",
                      prefixIcon: const Icon(Icons.calendar_month),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),

                    onTap: selectDate,

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Date of birth is required";
                      }

                      return null;
                    },
                  ),

                  const SizedBox(height: 15),

                  // Gender
                  DropdownButtonFormField<String>(
                    value: selectedGender,

                    decoration: InputDecoration(
                      labelText: "Gender",
                      prefixIcon: const Icon(Icons.people),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),

                    items: const [
                      DropdownMenuItem(
                        value: "Male",
                        child: Text("Male"),
                      ),
                      DropdownMenuItem(
                        value: "Female",
                        child: Text("Female"),
                      ),
                      DropdownMenuItem(
                        value: "Other",
                        child: Text("Other"),
                      ),
                    ],

                    onChanged: (value) {
                      setState(() {
                        selectedGender = value;
                      });
                    },

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please select gender";
                      }

                      return null;
                    },
                  ),

                  const SizedBox(height: 15),

                  // Address
                  TextFormField(
                    controller: addressController,
                    maxLines: 4,
                    textInputAction: TextInputAction.newline,

                    decoration: InputDecoration(
                      labelText: "Address",
                      hintText: "Enter your address",
                      prefixIcon: const Icon(Icons.home),
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),

                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Address is required";
                      }

                      return null;
                    },
                  ),

                  const SizedBox(height: 25),

                  // Save Button
                  SizedBox(
                    width: double.infinity,
                    height: 52,

                    child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                "Profile saved successfully!",
                              ),
                            ),
                          );
                        }
                      },

                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                        const Color.fromRGBO(91, 103, 241, 1),
                        foregroundColor: Colors.white,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),

                      child: const Text(
                        "Save Profile",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}