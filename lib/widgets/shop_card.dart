import 'package:flutter/material.dart';
import 'package:backpocket/screens/itemslist_form.dart';
import 'package:backpocket/screens/itemslist_page.dart';

class ShopItem {
  final String name;
  final IconData icon;
  final Color color;

  ShopItem(this.name, this.icon, this.color);
}

class ShopCard extends StatelessWidget {
  final ShopItem item;

  const ShopCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      child: InkWell(
          // Area responsif terhadap sentuhan
          onTap: () {
            // Memunculkan SnackBar ketika diklik
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(
                  content: Text("Kamu telah menekan tombol ${item.name}!")));

            // Navigate ke route yang sesuai (tergantung jenis tombol)
            if (item.name == "Add Item") {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ShopFormPage(),
                  )
                );
            }
            else if (item.name == "View Items") {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemsListPage(addedItems: formAddedItems))
              );
            }

          },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
