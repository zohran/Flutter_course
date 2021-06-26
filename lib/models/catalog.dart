class Item {
  final String id;
  final String name;
  final String desc;
  final String color;
  final String img;
  final num price;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.color,
      required this.img,
      required this.price});
}

final products = [
  Item(
    id: "id1",
    name: "iphone1",
    desc: "mehnga",
    price: 222,
    color: "#33052b",
    img:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSphCv4VNIIUNllJVVuH8thliMFashYbvc9m05F066kZvnd7RE&s",
  )
];
