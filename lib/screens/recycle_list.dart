import 'package:flutter/material.dart';

class RecycleList extends StatefulWidget {
  const RecycleList({Key? key}) : super(key: key);

  @override
  State<RecycleList> createState() => _RecycleScreenState();
}

class _RecycleScreenState extends State<RecycleList> {
  final TextEditingController _searchController = TextEditingController();
  List<String> allWastes = [
    "Aluminum Beverage Cans",
    "Appliance Production",
    "Barley",
    "Beverage Bottles",
    "Bottle Caps",
    "Body Lotion Residues",
    "Cardboard Boxes",
    "Cardboard Milk",
    "Canned Food Cans",
    "Canning Jars",
    "Chocolate Packaging",
    "Coffee Grounds",
    "Cooking Water",
    "Expired Solid",
    "Food Scraps",
    "Fruit",
    "Hair",
    "Jam Jars",
    "Juice Cartons",
    "Liquid Oils",
    "Mouthwash Residues",
    "Nylon Bags",
    "Oil",
    "Oil Residues",
    "Oils",
    "Packaging",
    "Paper Napkins",
    "Paper Packaging",
    "PET Bottles",
    "PET Cups",
    "Ready Soup Packaging",
    "Residues from Liquid Sauces",
    "Rye Straw",
    "Shampoo Residues",
    "Soap",
    "Tea",
    "Tomato Paste Cans",
    "Toothpaste",
    "Used Cooking Oils",
    "Vegetable Scraps",
    "Water Jugs",
    "Wheat",
  ];
  List<String> filteredWastes = [];

  @override
  void initState() {
    super.initState();
    filteredWastes = allWastes;
    _searchController.addListener(_searchWaste);
  }

  @override
  void dispose() {
    _searchController.removeListener(_searchWaste);
    _searchController.dispose();
    super.dispose();
  }

  void _searchWaste() {
    setState(() {
      filteredWastes = _searchController.text.isEmpty
          ? allWastes
          : allWastes.where((waste) => waste.toLowerCase().contains(_searchController.text.toLowerCase())).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Domestic Waste',
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFF388E3C),
        iconTheme: IconThemeData(color: Color(0xFFFFFFFF)),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Search for waste type...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.green.shade100),
                ),
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) {
                _searchWaste();
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredWastes.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    title: Text(
                      filteredWastes[index],
                      style: TextStyle(fontSize: 18),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: Colors.green.shade100,
                      child: Text(
                        filteredWastes[index][0],
                        style: TextStyle(fontSize: 22, color: Colors.green),
                      ),
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
