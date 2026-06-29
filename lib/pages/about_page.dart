import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About"), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Icon(Icons.flutter_dash, size: 100, color: Colors.blue),

            const SizedBox(height: 20),

            const Text(
              "Flutter Navigation App",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            const Text(
              "Version 1.0.0",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),

            const SizedBox(height: 30),

            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Aplikasi ini dibuat sebagai latihan untuk mempelajari Navigation & Routing pada Flutter. "
                  "Project ini mencakup Login, Dashboard, Profile, Product, About, Settings, "
                  "serta implementasi Navigator, Named Routes, Push, Pop, Push Replacement, "
                  "dan Push AndRemoveUntil.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16, height: 1.6),
                ),
              ),
            ),

            const SizedBox(height: 30),

            const ListTile(
              leading: Icon(Icons.code),
              title: Text("Framework"),
              subtitle: Text("Flutter"),
            ),

            const Divider(),

            const ListTile(
              leading: Icon(Icons.language),
              title: Text("Language"),
              subtitle: Text("Dart"),
            ),

            const Divider(),

            const ListTile(
              leading: Icon(Icons.person),
              title: Text("Developer"),
              subtitle: Text("Defa Nugraha"),
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
