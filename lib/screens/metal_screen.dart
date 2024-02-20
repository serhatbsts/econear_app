import 'package:econear_app/screens/glass_screen.dart';
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

class MetalPage extends StatefulWidget {
  const MetalPage({Key? key}) : super(key: key);

  @override
  _PurchasePageState createState() => _PurchasePageState();
}

void main() {
  runApp(MaterialApp(home: MetalPage()));
}

class _PurchasePageState extends State<MetalPage> {
  List<Product> products = [
    Product(
      name: 'Steel Profile',
      photoUrl: 'assets/images/metal_one.png',
      info: """Explore the possibilities with our high-quality steel profiles. Designed to meet the demands of various industries, our steel profiles offer versatility in construction and manufacturing projects. Choose our profiles for precision and durability in your applications.""",
      price: 280.00,
    ),
    Product(
      name: 'Steel Bar',
      photoUrl: 'assets/images/metal_two.png',
      info: """Our durable steel rods, manufactured to meet industry standards, stand out with their strength and versatility. Whether used in construction or manufacturing, our steel rods provide reliable support and structural integrity for a wide range of applications.""",
      price: 275.75,
    ),
    Product(
      name: 'Metal Sheet',
      photoUrl: 'assets/images/metal_three.png',
      info: """Discover the strength and flexibility of our metal sheets. Crafted with precision and durability in mind, our metal sheets are suitable for a variety of applications, from industrial projects to artistic endeavors. Choose our metal sheets for reliable performance and a sleek finish in your projects.""",
      price: 299.99,
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GlassPage()),
                      );
                    },
                    child: Text('Glass Products',
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
                    child: Text('Metal Products',
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

