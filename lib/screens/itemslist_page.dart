import 'package:flutter/material.dart';
import 'package:backpocket/widgets/item_card.dart';
import 'package:backpocket/widgets/left_drawer.dart';

class ItemsListPage extends StatelessWidget {
  final List<RegisteredItem> addedItems;

  const ItemsListPage({Key? key, required this.addedItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Items List'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: ListView.builder(
        itemCount: addedItems.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3.0,
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: ListTile(
              title: Text(addedItems[index].name),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Price: ${addedItems[index].price}'),
                  Text('Qty: ${addedItems[index].quantity}'),
                  Text('Description: ${addedItems[index].description}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
