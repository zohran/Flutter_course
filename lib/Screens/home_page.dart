import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/ItemWidget.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MeriList = List.generate(20, (index) => CatalogModel.items[0]);
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Catalog App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
            itemCount: MeriList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: MeriList[index],
              );
            },
          ),
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
