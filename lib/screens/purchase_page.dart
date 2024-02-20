import 'package:econear_app/screens/glass_screen.dart';
import 'package:econear_app/screens/metal_screen.dart';
import 'package:econear_app/screens/paper_screen.dart';
import 'package:econear_app/screens/plastic_screen.dart';
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

class PurchasePage extends StatefulWidget {
  const PurchasePage({Key? key}) : super(key: key);

  @override
  _PurchasePageState createState() => _PurchasePageState();
}

void main() {
  runApp(MaterialApp(home: PurchasePage()));
}

class _PurchasePageState extends State<PurchasePage> {
  List<Product> products = [
    Product(
      name: 'Solid Compost Fertilizer:',
      photoUrl: 'assets/images/fertilizer_one.png',
      info: """This is the most common type of compost. It is obtained through the decomposition of organic waste and conversion into humus. It restores the nutrients used by plants in the soil.""",
      price: 24.99,
    ),
    Product(
      name: 'Liquid Compost Tea:',
      photoUrl: 'assets/images/fertilizer_two.png',
      info: """It is a liquid fertilizer obtained by mixing solid compost with water and allowing it to steep for a certain period. It can be applied to plant leaves by spraying or poured into the soil.""",
      price: 27.99,
    ),
    Product(
      name: 'Worm Castings (Vermicompost):',
      photoUrl: 'assets/images/fertilizer_three.png',
      info: """This is a compost type produced by worms processing organic waste, rich in plant nutrients. It improves soil structure and supports plant growth.""",
      price: 33.75,
    ),
    Product(
      name: 'Bokashi Compost:',
      photoUrl: 'assets/images/fertilizer_four.png',
      info: """It is a type of fertilizer obtained by fermenting kitchen waste. The Bokashi method allows for rapid fermentation of waste and prevents the formation of unpleasant odors.""",
      price: 49.99,
    ),
    Product(
      name: 'Compost Pellets:',
      photoUrl: 'assets/images/fertilizer_five.png',
      info: """These are small, dense fertilizer particles obtained by processing and compressing solid compost. They are easy to store and transport.""",
      price: 19.75,
    ),
    Product(
      name: 'Compost Extract:',
      photoUrl: 'assets/images/fertilizer_six.png',
      info: """It is a liquid rich in plant nutrients obtained by mixing solid compost with water and filtering it. It can be applied directly to the soil or plants.""",
      price: 17.75,
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
                    },
                    child: Text('Fertilizer',
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
                  color: Color(0xFFFFFFFF),
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

