import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: "FIT",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              TextSpan(
                text: "PAY",
                style: TextStyle(color: Colors.yellow, fontSize: 20),
              ),
            ],
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(11),
            child: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(11),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                "O",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contact'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Sonali Soman',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _buildLabel('Name'),
              _buildTextField('name'),
              _buildLabel('Address'),
              _buildTextField('Kaatilkoodu house'),
              _buildLabel('Phone'),
              _buildTextField('0987654321'),
              _buildLabel('Email'),
              _buildTextField('Sahoo1231@gmail.com'),
              _buildLabel('Password'),
              _buildTextField('Enter user password', obscureText: true),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.yellow, // text color
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    // Handle save button press
                  },
                  child: const Text(
                    'Save',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildTextField(String hintText, {bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[900],
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
          
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 0,
        ),
      ),
    );
  }
}

