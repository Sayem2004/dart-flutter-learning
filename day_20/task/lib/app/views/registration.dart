import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final messageController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text(
          "Contact Us",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(82, 181, 72, 1.0),
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
                    Icons.contact_mail,
                    size: 55,
                    color: Color.fromRGBO(91, 103, 241, 1),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Get In Touch",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                 

                  const SizedBox(height: 25),

                  // Name
                  TextFormField(
                    controller: nameController,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelText: "Name",
                      hintText: "Enter your name",
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

                  // Email
                  TextFormField(
                    controller: emailController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "example@gmail.com",
                      prefixIcon: const Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
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
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.phone,
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

                  // Message
                  TextFormField(
                    controller: messageController,
                    maxLines: 5,
                    decoration: InputDecoration(
                      labelText: "Message",
                      hintText: "Write your message...",
                      prefixIcon: const Icon(Icons.message),
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    validator: (value) {
                      final message = value?.trim() ?? '';

                      if (message.isEmpty) {
                        return "Message is required";
                      }

                      if (message.length < 10) {
                        return "Message must be at least 10 characters";
                      }

                      return null;
                    },
                  ),

                  const SizedBox(height: 25),

                  // Button
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                "Message sent successfully!",
                              ),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                        const Color.fromRGBO(82, 181, 72, 1.0),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        "Send Message",
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