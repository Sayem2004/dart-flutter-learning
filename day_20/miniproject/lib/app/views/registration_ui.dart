import 'package:flutter/material.dart';

class RegistrationUi extends StatefulWidget {
  const RegistrationUi({super.key});

  @override
  State<RegistrationUi> createState() => _RegistrationUiState();
}

class _RegistrationUiState extends State<RegistrationUi> {
  final formKey = GlobalKey<FormState>();

  // Controllers
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final dobController = TextEditingController();

  // FocusNodes
  final nameFocus = FocusNode();
  final emailFocus = FocusNode();
  final phoneFocus = FocusNode();
  final passwordFocus = FocusNode();
  final confirmPasswordFocus = FocusNode();

  String? selectedGender;
  bool agreeTerms = false;
  bool isLoading = false;

  @override
  void dispose() {
    // Controllers
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    dobController.dispose();

    // FocusNodes
    nameFocus.dispose();
    emailFocus.dispose();
    phoneFocus.dispose();
    passwordFocus.dispose();
    confirmPasswordFocus.dispose();

    super.dispose();
  }

  // Date Picker
  Future<void> selectDate() async {
    FocusScope.of(context).unfocus();

    final DateTime? pickedDate = await showDatePicker(
      context: context,
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
      initialDate: DateTime(2000),
    );

    if (pickedDate != null) {
      setState(() {
        dobController.text =
        "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
      });
    }
  }

  // Submit
  Future<void> register() async {
    FocusScope.of(context).unfocus();

    final isValid = formKey.currentState!.validate();

    if (!isValid) {
      return;
    }

    if (!agreeTerms) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please agree to Terms & Conditions"),
        ),
      );
      return;
    }

    setState(() {
      isLoading = true;
    });

    // Simulate API request
    await Future.delayed(const Duration(seconds: 2));

    if (!mounted) return;

    setState(() {
      isLoading = false;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Registration successful!"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Smart Registration"),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),

          child: Form(
            key: formKey,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                const Center(
                  child: Column(
                    children: [
                      Text(
                        "Create Account",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        "Create your account to continue.",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                // Full Name
                TextFormField(
                  controller: nameController,
                  focusNode: nameFocus,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,

                  onFieldSubmitted: (_) {
                    emailFocus.requestFocus();
                  },

                  decoration: const InputDecoration(
                    labelText: "Full Name",
                    hintText: "Enter your full name",
                    prefixIcon: Icon(Icons.person_outline),
                    border: OutlineInputBorder(),
                  ),

                  validator: (value) {
                    final name = value?.trim() ?? '';

                    if (name.isEmpty) {
                      return "Full name is required";
                    }

                    if (name.length < 3) {
                      return "Name must be at least 3 characters";
                    }

                    return null;
                  },
                ),

                const SizedBox(height: 15),

                // Email
                TextFormField(
                  controller: emailController,
                  focusNode: emailFocus,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,

                  onFieldSubmitted: (_) {
                    phoneFocus.requestFocus();
                  },

                  decoration: const InputDecoration(
                    labelText: "Email",
                    hintText: "example@gmail.com",
                    prefixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(),
                  ),

                  validator: (value) {
                    final email = value?.trim() ?? '';

                    if (email.isEmpty) {
                      return "Email is required";
                    }

                    if (!email.contains('@')) {
                      return "Enter a valid email";
                    }

                    return null;
                  },
                ),

                const SizedBox(height: 15),

                // Phone
                TextFormField(
                  controller: phoneController,
                  focusNode: phoneFocus,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                  maxLength: 11,

                  onFieldSubmitted: (_) {
                    passwordFocus.requestFocus();
                  },

                  decoration: const InputDecoration(
                    labelText: "Phone",
                    hintText: "01XXXXXXXXX",
                    prefixIcon: Icon(Icons.phone_outlined),
                    border: OutlineInputBorder(),
                  ),

                  validator: (value) {
                    final phone = value?.trim() ?? '';

                    if (phone.isEmpty) {
                      return "Phone is required";
                    }

                    if (phone.length != 11) {
                      return "Phone must be 11 digits";
                    }

                    if (int.tryParse(phone) == null) {
                      return "Phone must contain only numbers";
                    }

                    return null;
                  },
                ),

                const SizedBox(height: 15),

                // Password
                TextFormField(
                  controller: passwordController,
                  focusNode: passwordFocus,
                  textInputAction: TextInputAction.next,
                  obscureText: true,

                  onFieldSubmitted: (_) {
                    confirmPasswordFocus.requestFocus();
                  },

                  decoration: const InputDecoration(
                    labelText: "Password",
                    hintText: "Minimum 8 characters",
                    prefixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(),
                  ),

                  validator: (value) {
                    final password = value ?? '';

                    if (password.isEmpty) {
                      return "Password is required";
                    }

                    if (password.length < 8) {
                      return "Password must be at least 8 characters";
                    }

                    return null;
                  },
                ),

                const SizedBox(height: 15),

                // Confirm Password
                TextFormField(
                  controller: confirmPasswordController,
                  focusNode: confirmPasswordFocus,
                  textInputAction: TextInputAction.done,
                  obscureText: true,

                  decoration: const InputDecoration(
                    labelText: "Confirm Password",
                    hintText: "Enter password again",
                    prefixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(),
                  ),

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please confirm your password";
                    }

                    if (value != passwordController.text) {
                      return "Passwords do not match";
                    }

                    return null;
                  },
                ),

                const SizedBox(height: 15),

                // Date of Birth
                TextFormField(
                  controller: dobController,
                  readOnly: true,

                  onTap: selectDate,

                  decoration: const InputDecoration(
                    labelText: "Date of Birth",
                    hintText: "Select your date of birth",
                    prefixIcon: Icon(Icons.calendar_today),
                    border: OutlineInputBorder(),
                  ),

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Date of birth is required";
                    }

                    return null;
                  },
                ),

                const SizedBox(height: 15),

                // Gender
                const Text(
                  "Gender",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                RadioListTile<String>(
                  title: const Text("Male"),
                  value: "Male",
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value;
                    });
                  },
                ),

                RadioListTile<String>(
                  title: const Text("Female"),
                  value: "Female",
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value;
                    });
                  },
                ),

                RadioListTile<String>(
                  title: const Text("Other"),
                  value: "Other",
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value;
                    });
                  },
                ),

                if (selectedGender == null)
                  const Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Text(
                      "Please select your gender",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),

                const SizedBox(height: 10),

                // Terms & Conditions
                CheckboxListTile(
                  contentPadding: EdgeInsets.zero,

                  title: const Text(
                    "I agree to the Terms & Conditions",
                  ),

                  value: agreeTerms,

                  onChanged: (value) {
                    setState(() {
                      agreeTerms = value ?? false;
                    });
                  },
                ),

                const SizedBox(height: 15),

                // Register Button
                SizedBox(
                  width: double.infinity,
                  height: 52,

                  child: ElevatedButton(
                    onPressed: isLoading ? null : register,

                    child: isLoading
                        ? const SizedBox(
                      height: 24,
                      width: 24,
                      child: CircularProgressIndicator(),
                    )
                        : const Text(
                      "REGISTER",
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
    );
  }
}