import 'package:flutter/material.dart';

class ProfileUi extends StatefulWidget {
  const ProfileUi({super.key});

  @override
  State<ProfileUi> createState() => _ProfileUiState();
}

class _ProfileUiState extends State<ProfileUi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Profile UI",
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(217, 232, 200, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(110, 100, 99, 1),
          centerTitle: true,
          title: const Text("Profile",
            style: TextStyle(
              fontWeight:  FontWeight.bold,
            ),
          ),
        ),


        body: SafeArea(
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 30),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(250, 245, 245, 1.0),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.person_outline, size: 80,),
                    ),
                    const SizedBox(height: 20,),
                    const Text("User Name",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 5,),
                    const Text("Font Developer",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey,
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        const Icon(Icons.email_outlined, size: 25,),
                        const SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Email:",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5,),
                            Text(
                              "user@example.com",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        const Icon(Icons.phone,
                        size: 15,),
                        const SizedBox(width: 25,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Phone:",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5,),
                            const Text("01XXXXXXXXX ")
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    // Divider
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey,
                    ),

                    const SizedBox(height: 30,),
                    ElevatedButton(onPressed: (){},
                        child: const Text("Edit Profile"),
                    ),

                  ],

                ),

              ),
            )
        ),
      ),
    );
  }
}
