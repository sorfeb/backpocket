import 'package:flutter/material.dart';
import 'package:backpocket/widgets/left_drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:backpocket/models/item.dart';

class ItemsListPage extends StatefulWidget {
  const ItemsListPage({Key? key}) : super(key: key);

  @override
  _ItemsListPageState createState() => _ItemsListPageState();
}

class _ItemsListPageState extends State<ItemsListPage> {
  Future<List<Item>> fetchProduct() async {
      var url = Uri.parse(
          'https://soros-febriano-tugas.pbp.cs.ui.ac.id/json/');
      var response = await http.get(
          url,
          headers: {"Content-Type": "application/json"},
      );

      // melakukan decode response menjadi bentuk json
      var data = jsonDecode(utf8.decode(response.bodyBytes));

      // melakukan konversi data json menjadi object Product
      List<Item> list_item = [];
      for (var d in data) {
          if (d != null) {
              list_item.add(Item.fromJson(d));
          }
      }
      return list_item;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Items List'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchProduct(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
              if (!snapshot.hasData) {
                return const Column(
                    children: [
                    Text(
                        "Tidak ada data produk.",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                    ),
                    SizedBox(height: 8),
                    ],
                );
          } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text(
                            "${snapshot.data![index].fields.name}",
                            style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                            ),
                            ),
                            const SizedBox(height: 10),
                            Text("${snapshot.data![index].fields.price}"),
                            const SizedBox(height: 10),
                            Text("${snapshot.data![index].fields.amount}"),
                            const SizedBox(height: 10),
                            Text(
                                "${snapshot.data![index].fields.description}")
                                ],
                                ),
                            ));
                    }
                }
            }));
    }
}