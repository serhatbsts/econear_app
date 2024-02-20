import 'package:econear_app/screens/glass_screen.dart';
import 'package:econear_app/screens/metal_screen.dart';
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

class PaperPage extends StatefulWidget {
  const PaperPage({Key? key}) : super(key: key);

  @override
  _PurchasePageState createState() => _PurchasePageState();
}

void main() {
  runApp(MaterialApp(home: PaperPage()));
}

class _PurchasePageState extends State<PaperPage> {
  List<Product> products = [
    Product(
      name: 'Napkin',
      photoUrl: 'assets/images/paper_four.png',
      info: """Use our napkins to add color to your dining tables and events. Available in different colors and patterns, our napkins help you create a hygienic and stylish table setting.""",
      price: 7.99,
    ),
    Product(
      name: 'Plate',
      photoUrl: 'assets/images/paper_two.png',
      info: """Our plate collection combines elegance and durability. Offered in different materials and sizes, our plates are ideal for adding a special touch to your dining table.""",
      price: 12.99,
    ),
    Product(
      name: 'Cardboard Box',
      photoUrl: 'assets/images/paper_three.png',
      info: """Choose our cardboard boxes to store your products in an organized and secure manner. Available in different sizes and sturdy structures, our cardboard boxes offer practical solutions for your transportation and storage needs.""",
      price: 12.50,
    ),
    Product(
      name: 'Packaging Material',
      photoUrl: 'assets/images/paper_five.png',
      info: """Our packaging materials provide high quality and durability for safely packaging and protecting our products. Suitable for various industries, our packaging materials help you transport your products securely.""",
      price: 9.99,
    ),
    Product(
      name: 'Cup',
      photoUrl: 'assets/images/paper_six.png',
      info: """Available in different sizes and designs, our cups are ideal for enjoying your beverages. Crafted with quality materials, our cups stand out with practical use and stylish designs.""",
      price: 7.75,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Purchase Page',
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
                      ),),
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
                    child: Text('Paper products',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                      ),),
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
                        MaterialPageRoute(builder: (context) => GlassPage()),
                      );
                    },
                    child: Text('Glass Products',
                      style: TextStyle(
                        color: Color(0xFF212121),
                      ),),
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
                      ),),
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
                      ),),
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

