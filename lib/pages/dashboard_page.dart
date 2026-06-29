import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  Widget buildMenu({
    required BuildContext context,
    required IconData icon,
    required String title,
    required Color color,
    required String route,
  }) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () {
          Navigator.pushNamed(context, route);
        },
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 55, color: color),
              const SizedBox(height: 15),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final username =
        ModalRoute.of(context)?.settings.arguments as String? ?? "Guest";

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, "/", (route) => false);
            },
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              "Halo, $username 👋",
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            const Text(
              "Selamat datang di Flutter Navigation",
              style: TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 30),

            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,

                children: [
                  buildMenu(
                    context: context,
                    icon: Icons.person,
                    title: "Profile",
                    color: Colors.blue,
                    route: "/profile",
                  ),

                  buildMenu(
                    context: context,
                    icon: Icons.shopping_bag,
                    title: "Products",
                    color: Colors.green,
                    route: "/products",
                  ),

                  buildMenu(
                    context: context,
                    icon: Icons.info,
                    title: "About",
                    color: Colors.orange,
                    route: "/about",
                  ),

                  buildMenu(
                    context: context,
                    icon: Icons.settings,
                    title: "Settings",
                    color: Colors.purple,
                    route: "/settings",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
