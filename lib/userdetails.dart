import 'package:fitpay/editdetails.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({super.key});

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Sonali Soman',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.yellow,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EditProfile()),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              _buildUserInfo('Name', 'Sahoo Haidenber'),
              _buildUserInfo('Address', 'Kaatilkoodu house'),
              _buildUserInfo('Phone no', '0987654321'),
              _buildUserInfo('Email id', 'Sahoo1231@gmail.com'),
              _buildUserInfo('Password', 'Sahoo Haidenber'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUserInfo(String label, String info) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Text(
            '$label:',
            style: const TextStyle(
              color: Colors.yellow,
              fontSize: 16,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            info,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class EditDetails extends StatelessWidget {
  const EditDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Details'),
      ),
      body: const Center(
        child: Text('Edit Details Page'),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: UserDetails(),
  ));
}
