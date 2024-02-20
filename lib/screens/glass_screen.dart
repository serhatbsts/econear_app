import 'package:econear_app/screens/metal_screen.dart';
import 'package:econear_app/screens/paper_screen.dart';
import 'package:econear_app/screens/plastic_screen.dart';
import 'package:econear_app/screens/purchase_page.dart';
import 'package:econear_app/screens/wooden_screen.dart';
import 'package:flutter/material.dart';

class Product {
  final String name;
  final String photoUrl;
  final String info;
  final double price;

  Product({
    required this.name,
    required this.photoUrl,
    required this.info,
    required this.price,
  });
}

class GlassPage extends StatefulWidget {
  const GlassPage({Key? key}) : super(key: key);

  @override
  _PurchasePageState createState() => _PurchasePageState();
}

void main() {
  runApp(MaterialApp(home: GlassPage()));
}

class _PurchasePageState extends State<GlassPage> {
  List<Product> products = [
    Product(
      name: 'Glass Bottle',
      photoUrl: 'assets/images/glass_one.png',
      info: """Choose sustainability with our glass bottle offerings. Designed for both aesthetics and functionality, our glass bottles are perfect for packaging beverages, sauces, and more. Opt for the durability and recyclability of our glass bottles, making a positive impact on the environment.""",
      price: 45.75,
    ),
    Product(
      name: 'Glass Block Mosaic',
      photoUrl: 'assets/images/glass_three.png',
      info: """Unleash your creativity with our glass block mosaic collection. Perfect for adding a touch of elegance to any space, our mosaic tiles offer versatility in design. Create stunning visual effects and unique patterns with our glass block mosaic, enhancing the aesthetics of your projects.""",
      price: 49.99,
    ),
    Product(
      name: 'Glass Fiber',
      photoUrl: 'assets/images/glass_four.png',
      info: """Experience the strength and flexibility of our glass fiber products. Engineered for durability and performance, our glass fiber materials find applications in various industries. Whether reinforcing composites or providing insulation, our glass fiber solutions deliver reliability and quality.""",
      price: 75.75,
    ),
    Product(
      name: 'Glass Wool',
      photoUrl: 'assets/images/glass_five.png',
      info: """Discover the insulating properties of our glass wool products. Ideal for thermal and acoustic insulation, our glass wool provides a reliable solution for diverse construction and industrial applications. Trust in the quality and performance of our glass wool to meet your insulation needs.""",
      price: 45.50,
    ),
    Product(
      name: 'Recycled Glass',
      photoUrl: 'assets/images/glass_six.png',
      info: """Embrace sustainability with our recycled glass products. Our commitment to eco-friendly practices is reflected in the production of recycled glass, contributing to a greener future. From decorative items to functional pieces, our recycled glass products combine environmental consciousness with artistic appeal.""",
      price: 65.75,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Purchase Page',
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFF388E3C),
        iconTheme: IconThemeData(color: Color(0xFFFFFFFF)),
      ),
      backgroundColor: Color(0xF0F0F4F8),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 7.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PurchasePage()),
                      );
                    },
                    child: Text('Fertilizer',
                      style: TextStyle(
                        color: Color(0xFF212121),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFC8E6C9),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PaperPage()),
                      );
                    },
                    child: Text('Paper products',
                      style: TextStyle(
                        color: Color(0xFF212121),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFC8E6C9),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  ElevatedButton(
                    onPressed: () {
                    },
                    child: Text('Glass Products',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF81C784),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MetalPage()),
                      );
                    },
                    child: Text('Metal Products',
                      style: TextStyle(
                        color: Color(0xFF212121),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFC8E6C9),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WoodenPage()),
                      );
                    },
                    child: Text('Wooden Products',
                      style: TextStyle(
                        color: Color(0xFF212121),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFC8E6C9),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PlasticPage()),
                      );
                    },
                    child: Text('Plastic Products',
                      style: TextStyle(
                        color: Color(0xFF212121),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFC8E6C9),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return Card(
                  margin: EdgeInsets.all(8),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Image.asset(product.photoUrl),
                        SizedBox(height: 10),
                        Text(product.info),
                        SizedBox(height: 10),
                        Text('Price: ${product.price} \$'),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'How many do you want?',
                                  border: OutlineInputBorder(),
                                ),
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: () {
                              },
                              child: Text('Buy Now'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

