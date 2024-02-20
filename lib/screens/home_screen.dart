import 'package:flutter/material.dart';
import 'package:econear_app/screens/details_screen.dart';
import 'package:econear_app/screens/faq_screen.dart';
import 'package:econear_app/screens/location_list_screen.dart';
import 'package:econear_app/screens/profile_screen.dart';
import 'package:econear_app/screens/purchase_page.dart';
import 'package:econear_app/screens/recycle_list.dart';
import 'package:econear_app/widgets/category_card.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _amountController = TextEditingController();
  double _currentBalance = 140.0;

  void _withdrawMoney() {
    final inputAmount = double.tryParse(_amountController.text);
    if (inputAmount != null && inputAmount <= _currentBalance) {
      setState(() {
        _currentBalance -= inputAmount;
      });
      _amountController.clear();
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Invalid amount or insufficient funds.'),
            actions: <Widget>[
              TextButton(
                child: Text('Okay'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome to EcoNear!",
          style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),
      ),
          centerTitle: true,
          backgroundColor: Color(0xFF388E3C),
          iconTheme: IconThemeData(color: Colors.white),
          actionsIconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: Icon(Icons.question_answer),
            onPressed: () {
            Navigator.push(
            context,
          MaterialPageRoute(builder: (context) => FAQScreen()),
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: size.height * .295,
            decoration: BoxDecoration(
              color: Color(0xFFA5D6A7),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 80,
                    width: size.width * 0.4,
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F8F8),
                      borderRadius: BorderRadius.circular(5),
                  ),

                      child: RichText(
                      text: TextSpan(
                      children: [
                        TextSpan(
                          text: "My Wallet\n",
                          style: TextStyle(
                          color: Color(0xFF212121),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                        TextSpan(
                          text: "\$${_currentBalance.toString()}",
                          style: TextStyle(
                            color: Color(0xFF212121),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _amountController,
                          decoration: InputDecoration(
                            labelText: 'Amount to Withdraw',
                            hintText: 'Ex: 15',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 2.1),
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white70, width: 2.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          keyboardType: TextInputType.numberWithOptions(decimal: true),
                        )
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          _withdrawMoney();
                        },
                        child: Text(
                          'withdrawal',
                          style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 1,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        CategoryCard(
                          title: "Purchasing",
                          svgImg: "assets/images/buy.png",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PurchasePage()),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Location List",
                          svgImg: "assets/images/maps.png",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LocationListScreen()),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "About Waste",
                          svgImg: "assets/images/trash.png",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DetailsScreen()),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Domestic Waste",
                          svgImg: "assets/images/recycle.png",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => RecycleList()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



