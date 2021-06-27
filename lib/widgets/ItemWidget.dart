import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey,
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.img),
        title: Text(
          item.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        subtitle: Text(
          item.desc,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 15.0,
          ),
        ),
        trailing: Text(
          "\$${(item.price).toString()}",
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontSize: 23.0,
          ),
        ),
      ),
    );
  }
}
