import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String name;
  final int price;
  final String description;
  final IconData icon;

  const DetailPage({
    super.key,
    required this.name,
    required this.price,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product Detail"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    CircleAvatar(radius: 45, child: Icon(icon, size: 50)),

                    const SizedBox(height: 20),

                    Text(
                      name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 15),

                    Text(
                      "Rp ${price.toString()}",
                      style: const TextStyle(
                        fontSize: 22,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const Divider(height: 40),

                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Deskripsi",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    Text(
                      description,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(fontSize: 16, height: 1.5),
                    ),
                  ],
                ),
              ),
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.shopping_cart_checkout),
                label: const Text(
                  "Beli Sekarang",
                  style: TextStyle(fontSize: 18),
                ),
                onPressed: () {
                  Navigator.pop(context, "Pembelian berhasil untuk $name");
                },
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
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
      ),
    );
  }
}
