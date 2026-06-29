import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile"), centerTitle: true),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.blue,
              child: Icon(Icons.person, size: 70, color: Colors.white),
            ),

            const SizedBox(height: 20),

            const Text(
              "Defa Nugraha",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 5),

            const Text(
              "Flutter Developer",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),

            const SizedBox(height: 30),

            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text("Email"),
                    subtitle: Text("defa@email.com"),
                  ),

                  Divider(height: 1),

                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("Phone"),
                    subtitle: Text("+62 81234567890"),
                  ),

                  Divider(height: 1),

                  ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text("Address"),
                    subtitle: Text("Depok, Indonesia"),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            SizedBox(
              width: double.infinity,
              height: 50,

              child: ElevatedButton.icon(
                icon: const Icon(Icons.arrow_back),
                label: const Text("Kembali", style: TextStyle(fontSize: 18)),

                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
