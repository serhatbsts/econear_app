import 'package:flutter/material.dart';

class FAQScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Frequently Asked Questions',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF388E3C),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: Color(0xDDF0F4F8),
        child: ListView(
          padding: const EdgeInsets.all(8.0),
          children: [
            _buildExpansionTile('How can I download the app and register?', 'You can download the app by searching for EcoNear in the app store on your device. You can register by clicking the register button on the login screen and entering the required information.'),
            _buildExpansionTile('How do I view my ID code?', 'You can view it in the profile section on the home page.'),
            _buildExpansionTile('How can I find collection points?', 'You can see the nearest address to you from the location list on the home page by using Google Maps.'),
            _buildExpansionTile('What types of waste can be recycled?', 'You can see which wastes can be recycled by pressing the  button.'),
            _buildExpansionTile('How can I earn credits for the waste I bring to the collection points?', 'After entering your ID number in the trash can at the collection point, credits will be loaded to your account in proportion to the amount of waste you throw.'),
            _buildExpansionTile('Where and how can I use the credits I earned?', 'You can use the earned credits by withdrawing them from your bank account as you wish.'),
            _buildExpansionTile('Do my credits have an expiration date?', 'Credits are valid for 1 year.'),
            _buildExpansionTile('How do I log in to the credit system from the trash can with my ID?', 'You can log in by entering the ID code from your profile section into the screen on the trash can.'),
            _buildExpansionTile('Is the information I provide in the app secure?', """Yes, the information you provide in the app is secure. The app takes industry-standard security measures to protect users' personal information. User privacy and data security are among the app's priorities."""),
            _buildExpansionTile('How can I provide feedback about the app?', 'You can provide feedback at eco_neargmail.com.'),
          ],
        ),
      ),
    );
  }

  Widget _buildExpansionTile(String question, String answer) {
    return Card(
      elevation: 3.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ExpansionTile(
        title: Text(
          question,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16.0),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white54,
              border: Border(
                top: BorderSide(width: 0.6, color: Colors.deepPurple),
              ),
            ),
            child: Text(answer),
          ),
        ],
      ),
    );
  }
}
