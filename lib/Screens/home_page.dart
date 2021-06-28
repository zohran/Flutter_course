import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/ItemWidget.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'dart:convert';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var prod = await rootBundle.loadString("assets/files/products.json");
    // ignore: non_constant_identifier_names
    var deco_prod = jsonDecode(prod);
    var dataprod = deco_prod["products"];
    CatalogModel.items =
        List.from(dataprod).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Catalog App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: CatalogModel.items[index],
              );
            },
          ),
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
