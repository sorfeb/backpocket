import 'dart:convert';

import 'package:backpocket/screens/menu.dart';
import 'package:flutter/material.dart';
import 'package:backpocket/widgets/left_drawer.dart';
import 'package:backpocket/widgets/item_card.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

List<RegisteredItem> formAddedItems = [];

class ShopFormPage extends StatefulWidget {
    const ShopFormPage({super.key});

    @override
    State<ShopFormPage> createState() => _ShopFormPageState();
}

class _ShopFormPageState extends State<ShopFormPage> {
    final _formKey = GlobalKey<FormState>();
    String _name = "";
    int _amount = 0;
    String _description = "";

    @override
    Widget build(BuildContext context) {
        final request = context.watch<CookieRequest>();

        return Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text(
                'Add New Item',
              ),
            ),
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
          ),
          drawer: const LeftDrawer(),
          body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Nama Produk",
                            labelText: "Nama Produk",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          onChanged: (String? value) {
                            setState(() {
                              _name = value!;
                            });
                          },
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return "Nama tidak boleh kosong!";
                            }
                            return null;
                          },
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Amount",
                            labelText: "Amount",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          onChanged: (String? value) {
                            setState(() {
                              _amount = int.parse(value!);
                            });
                          },
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return "Quantity can't be 0!";
                            }
                            if (int.tryParse(value) == null) {
                              return "Quantity can't be 0!";
                            }
                            return null;
                          },
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Deskripsi",
                            labelText: "Deskripsi",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          onChanged: (String? value) {
                            setState(() {
                              _description = value!;
                            });
                          },
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return "Deskripsi tidak boleh kosong!";
                            }
                            return null;
                          },
                        ),
                      ),

                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.indigo),
                            ),
                            onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                    final response = await request.postJson(
                                    "http://soros-febriano-tugas.pbp.cs.ui.ac.id/create-flutter/",
                                    jsonEncode(<String, String>{
                                        'name': _name,
                                        'amount': _amount.toString(),
                                        'description': _description,
                                    }));
                                    if (response['status'] == 'success') {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                        content: Text("Produk baru berhasil disimpan!"),
                                        ));
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(builder: (context) => MyHomePage()),
                                        );
                                    } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                            content:
                                                Text("Terdapat kesalahan, silakan coba lagi."),
                                        ));
                                    }
                                }
                            },
                            child: const Text(
                              "Save",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),

                    ] 
              ),
            ),
          ),
        );
    }
}