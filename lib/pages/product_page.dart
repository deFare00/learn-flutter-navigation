import 'package:flutter/material.dart';

import 'detail_page.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  final List<Map<String, dynamic>> products = const [
    {
      "name": "Laptop ASUS",
      "price": 12000000,
      "description": "Laptop untuk programming dan multimedia.",
      "icon": Icons.laptop,
    },
    {
      "name": "Mechanical Keyboard",
      "price": 850000,
      "description": "Keyboard RGB dengan switch Blue.",
      "icon": Icons.keyboard,
    },
    {
      "name": "Gaming Mouse",
      "price": 350000,
      "description": "Mouse gaming RGB 7200 DPI.",
      "icon": Icons.mouse,
    },
    {
      "name": "Monitor 24 Inch",
      "price": 2400000,
      "description": "Monitor IPS Full HD 165Hz.",
      "icon": Icons.monitor,
    },
    {
      "name": "Headset Gaming",
      "price": 650000,
      "description": "Headset surround 7.1.",
      "icon": Icons.headset,
    },
    {
      "name": "Webcam HD",
      "price": 420000,
      "description": "Webcam Full HD 1080p.",
      "icon": Icons.videocam,
    },
    {
      "name": "SSD NVMe 1TB",
      "price": 1350000,
      "description": "SSD NVMe Gen4 berkecepatan tinggi.",
      "icon": Icons.storage,
    },
    {
      "name": "Printer Epson",
      "price": 2200000,
      "description": "Printer multifungsi untuk kantor.",
      "icon": Icons.print,
    },
    {
      "name": "Smartphone",
      "price": 5500000,
      "description": "Smartphone Android terbaru.",
      "icon": Icons.smartphone,
    },
    {
      "name": "Tablet",
      "price": 4800000,
      "description": "Tablet untuk belajar dan bekerja.",
      "icon": Icons.tablet,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Products"), centerTitle: true),

      body: ListView.builder(
        itemCount: products.length,

        itemBuilder: (context, index) {
          final product = products[index];

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),

            elevation: 4,

            child: ListTile(
              leading: CircleAvatar(radius: 28, child: Icon(product["icon"])),

              title: Text(
                product["name"],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),

              subtitle: Text("Rp ${product["price"]}"),

              trailing: const Icon(Icons.arrow_forward_ios),

              onTap: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailPage(
                      name: product["name"],
                      price: product["price"],
                      description: product["description"],
                      icon: product["icon"],
                    ),
                  ),
                );

                if (result != null) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text(result)));
                }
              },
            ),
          );
        },
      ),
    );
  }
}
