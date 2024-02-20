import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details',
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFF388E3C),
        iconTheme: IconThemeData(color: Color(0xFFFFFFFF)),
      ),
      backgroundColor: Color(0xF0F0F4F8),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          buildItem(context, 'Electronic Waste', """Electronic waste, often generated due to rapidly evolving technology, can pose potential hazards to the environment if not managed properly. Recycling allows for the recovery of valuable metals from electronic waste and prevents the release of harmful substances into the environment.""", 'assets/images/recycle_one.png'),
          buildItem(context, 'Plastic Waste', """Plastic waste refers to the category where used plastic materials are considered as garbage. These wastes typically consist of packaging materials, bottles, and other plastic products. Since plastics have a long decomposition time in nature, they can cause environmental issues. Reducing and recycling plastic waste are part of environmental protection efforts.""", 'assets/images/recycle_two.png'),
          buildItem(context, 'Vegetable Oils Waste', """Vegetable oil waste refers to the post-use residues of vegetable oils commonly used at home or in industries. Since these wastes can be harmful to the environment, they should be properly collected and directed to recycling. Proper recycling of vegetable oil waste can reduce environmental pollution and convert them into energy sources like biodiesel.""", 'assets/images/recycle_three.jpg'),
          buildItem(context, 'Battery Waste', """Battery waste consists of used or depleted batteries and accumulators. They are commonly found in households, workplaces, and industrial facilities. Battery waste can pose potential hazards to the environment due to the toxic substances they contain. Therefore, proper collection, directing to recycling facilities, and prevention of harmful substances from being released into the environment are important. Recycling allows for the recovery of various metals from battery waste and reduces their negative effects on the environment.""", 'assets/images/recycle_four.jpg'),
          buildItem(context, 'Glass Waste', """Glass waste generally refers to waste materials consisting mainly of glass. Proper collection and recycling of glass waste contribute to conserving natural resources, saving energy, and reducing environmental pollution. Recycled glass reduces the use of raw materials for new glass production, thereby positively impacting the environment.""", 'assets/images/recycle_five.jpg'),
          buildItem(context, 'Organic Waste', """Organic waste refers to waste materials of natural origin that can be biologically decomposed. Separating and composting organic waste can improve soil fertility and reduce the amount of time it takes for these wastes to decompose in landfills, thus minimizing environmental impacts.""", 'assets/images/recycle_six.jpg'),
          buildItem(context, 'Wood Waste', """Wood waste refers to the category where used or processed wood materials are considered as waste. These wastes can be recycled into new wood products or used for energy production. Wood waste recycling contributes to forest resource conservation, energy savings, and reducing environmental impacts.""", 'assets/images/recycle_seven.jpg'),
          buildItem(context, 'Paper Waste', """Paper waste refers to used paper products. These wastes can be recycled by being processed into new paper. Paper recycling is important for natural resource conservation and environmental protection. Separately collecting paper waste contributes to recycling efforts, reducing waste and minimizing environmental impacts.""", 'assets/images/recycle_eight.jpg'),
          buildItem(context, 'Composite Waste', """Composite waste refers to waste types that are difficult to separate in the recycling process due to being composed of different materials. These wastes often have a complex structure created by combining multiple materials with different properties, making the recycling process more challenging.""", 'assets/images/recycle_nine.jpg'),
          buildItem(context, 'Metal Waste', """Metal waste consists of used or discarded metal products and materials. These wastes typically include metals such as iron, aluminum, steel, and copper, and can be recycled to be reused. Recycling metal waste contributes to conserving natural resources, saving energy, and reducing environmental pollution.""", 'assets/images/recycle_ten.jpg'),
        ],
      ),
    );
  }

  Widget buildItem(BuildContext context, String title, String subtitle, String imagePath) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(imagePath, width: double.infinity, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
            child: Text(
              subtitle,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
