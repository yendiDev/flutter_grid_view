import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gridview',
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Products(),
      ),
    );
  }
}

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final list_items = [
    {'name': 'James', 'pic': 'images/egypt.png', 'price': 60, 'old_price': 90},
    {
      'name': 'Camilo',
      'pic': 'images/germany.png',
      'price': 60,
      'old_price': 90
    },
    {
      'name': 'Patterson',
      'pic': 'images/greece.png',
      'price': 60,
      'old_price': 90
    },
    {
      'name': 'Ben',
      'pic': 'images/indonesia.png',
      'price': 60,
      'old_price': 90
    },
    {'name': 'James', 'pic': 'images/kenya.png', 'price': 60, 'old_price': 90},
    {
      'name': 'James',
      'pic': 'images/south_korea.png',
      'price': 60,
      'old_price': 90
    },
    {'name': 'James', 'pic': 'images/uk.png', 'price': 60, 'old_price': 90},
    {'name': 'James', 'pic': 'images/usa.png', 'price': 60, 'old_price': 90}
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: list_items.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Product(
            product_name: list_items[index]['name'],
            product_pic: list_items[index]['pic'],
            product_price: list_items[index]['price'],
            product_old: list_items[index]['old_price'],
          );
        });
  }
}

class Product extends StatelessWidget {
  final product_name;
  final product_price;
  final product_pic;
  final product_old;

  Product(
      {this.product_name,
      this.product_price,
      this.product_pic,
      this.product_old});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: InkWell(
          onTap: (){},
      child: GridTile(
        child: Image.asset(product_pic, fit: BoxFit.cover,),
        footer: Container(
          alignment: Alignment.topLeft,
          color: Colors.black12,
          child: ListTile(
            leading: Text(product_name,
              style: TextStyle(fontWeight: FontWeight.bold),),
            title: Text("\$$product_price"),
            subtitle: Text("\$$product_old"),
          ),
        ),

      ),
      ),
      ),
    );
  }
}
