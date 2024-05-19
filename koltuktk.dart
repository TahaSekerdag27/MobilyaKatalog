import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobilya Kataloğu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SofaCatalogPage(),
    );
  }
}

class SofaCatalogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Koltuk Takımları'),
      ),
      body: ListView(
        children: <Widget>[
          SofaItem(
            name: 'SERHAT PETRA KOLTUK TAKIMI',
            imageUrl: 'KOLTUK FOTO1',
            price: 1500,
          ),
          SofaItem(
            name: 'ASSARA MUSTANG KOLTUK TAKIMI',
            imageUrl: 'KOLTUK FOTO2',
            price: 2000,
          ),
          // Diğer koltuk takımları buraya eklenebilir.
        ],
      ),
    );
  }
}

class SofaItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final double price;

  const SofaItem({
    Key? key,
    required this.name,
    required this.imageUrl,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network(
              imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Fiyat: \$${price.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
