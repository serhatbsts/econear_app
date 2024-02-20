import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
              color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFF388E3C),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: Color(0x13F0F4F8),
        padding: EdgeInsets.all(12.0),
        child: ListView(
          children: <Widget>[
            _buildProfileInfoCard('Name', 'John Doe'),
            _buildProfileInfoCard('User ID', '123456789'),
            _buildProfileInfoCard('E-mail', 'johndoe@example.com'),
            _buildProfileInfoCard('Home address', '123 Main St, City, Country'),
            _buildProfileInfoCard('IBAN', 'TR00 0000 0000 0000 0000 0000 00'),
            _buildProfileInfoCard('IBAN Name Surname', 'John Doe'),
            SizedBox(height: 20),
            _buildEditButton(context, 'Edit General Information'),
            SizedBox(height: 20),
            _buildEditButton(context, 'Edit IBAN Information'),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileInfoCard(String label, String value) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(label, style: TextStyle(color: Color(0xFF2C7E31), fontWeight: FontWeight.bold, fontSize: 20)),
        subtitle: Text(value, style: TextStyle(fontSize: 18)),
      ),
    );
  }

  Widget _buildEditButton(BuildContext context, String buttonText) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
        },
        child: Text(buttonText),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xFF418947)),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
      ),
    );
  }
}
