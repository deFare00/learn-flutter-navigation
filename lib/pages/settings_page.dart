import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool notification = true;

  bool darkMode = false;

  String language = "Indonesia";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings"), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            "General Settings",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          Card(
            child: SwitchListTile(
              secondary: const Icon(Icons.notifications),
              title: const Text("Notification"),
              subtitle: const Text("Enable notification"),
              value: notification,
              onChanged: (value) {
                setState(() {
                  notification = value;
                });
              },
            ),
          ),

          const SizedBox(height: 10),

          Card(
            child: SwitchListTile(
              secondary: const Icon(Icons.dark_mode),
              title: const Text("Dark Mode"),
              subtitle: const Text("Enable dark mode"),
              value: darkMode,
              onChanged: (value) {
                setState(() {
                  darkMode = value;
                });
              },
            ),
          ),

          const SizedBox(height: 20),

          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Language",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),

                  const SizedBox(height: 15),

                  DropdownButton<String>(
                    isExpanded: true,
                    value: language,
                    items: const [
                      DropdownMenuItem(
                        value: "Indonesia",
                        child: Text("Indonesia"),
                      ),
                      DropdownMenuItem(
                        value: "English",
                        child: Text("English"),
                      ),
                      DropdownMenuItem(
                        value: "Japanese",
                        child: Text("Japanese"),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        language = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 30),

          SizedBox(
            height: 50,
            child: ElevatedButton.icon(
              icon: const Icon(Icons.save),
              label: const Text(
                "Save Settings",
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Success"),
                      content: const Text("Settings berhasil disimpan."),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);

                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Perubahan berhasil disimpan"),
                              ),
                            );
                          },
                          child: const Text("OK"),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),

          const SizedBox(height: 15),

          SizedBox(
            height: 50,
            child: OutlinedButton.icon(
              icon: const Icon(Icons.arrow_back),
              label: const Text("Kembali", style: TextStyle(fontSize: 18)),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
