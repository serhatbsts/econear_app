import 'package:econear_app/screens/glass_screen.dart';
import 'package:econear_app/screens/metal_screen.dart';
import 'package:econear_app/screens/paper_screen.dart';
import 'package:econear_app/screens/plastic_screen.dart';
import 'package:econear_app/screens/purchase_page.dart';
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

class WoodenPage extends StatefulWidget {
  const WoodenPage({Key? key}) : super(key: key);

  @override
  _PurchasePageState createState() => _PurchasePageState();
}

void main() {
  runApp(MaterialApp(home: WoodenPage()));
}

class _PurchasePageState extends State<WoodenPage> {
  List<Product> products = [
    Product(
      name: 'Chair',
      photoUrl: 'assets/images/wooden_one.png',
      info: """Discover comfort and style in our collection of chairs. From ergonomic office chairs to stylish dining chairs, our range offers a perfect blend of functionality and aesthetics. Each chair is crafted for durability and comfort, ensuring a pleasant seating experience.""",
      price: 99.99,
    ),
    Product(
      name: 'Wooden Building Materials',
      photoUrl: 'assets/images/wooden_two.png',
      info: """Our wooden building materials are the foundation for sturdy and reliable constructions. From framing to finishing, our high-quality wood ensures structural integrity and aesthetic appeal. Choose our wooden materials for your construction projects, and build with confidence and durability.""",
      price: 149.99,
    ),
    Product(
      name: 'Logistics Pallet',
      photoUrl: 'assets/images/wooden_three.png',
      info: """Our logistics pallets are designed to meet industry standards, providing efficient and reliable solutions for your logistical needs. With their robust construction, they ensure the secure transportation of goods, making them an essential asset in the supply chain.""",
      price: 249.49,
    ),
    Product(
      name: 'Table',
      photoUrl: 'assets/images/wooden_four.png',
      info: """Explore our diverse range of tables, each crafted with precision and style. Whether for your home or office, our tables boast quality materials and elegant designs, enhancing the aesthetics of any space while providing a functional surface for various purposes.""",
      price: 110.75,
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

