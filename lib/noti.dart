import 'package:flutter/material.dart';

class Noti extends StatefulWidget {
  const Noti({super.key});

  @override
  _NotiState createState() => _NotiState();
}

class _NotiState extends State<Noti> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

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
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.yellow,
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text("Requests"),
                ),
              ),
            ),
            Tab(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.yellow),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text("Notifications"),
                ),
              ),
            ),
          ],
        ),
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
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildRequestsTab(),
          _buildNotificationsTab(),
        ],
      ),
    );
  }

  Widget _buildRequestsTab() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          title: const Text(
            "Absent request sent to admin",
            style: TextStyle(color: Colors.white),
          ),
          subtitle: const Text(
            "09:00 pm  20-05-2024",
            style: TextStyle(color: Colors.grey),
          ),
          trailing: ElevatedButton(
            onPressed: () {
              // Handle cancel request action
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red, // Background color
            ),
            child: const Text("Cancel"),
          ),
        ),
      ),
    );
  }

  Widget _buildNotificationsTab() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          title: const Text(
            "Pay February fees to admin",
            style: TextStyle(color: Colors.white),
          ),
          subtitle: const Text(
            "09:00 pm  20-05-2024",
            style: TextStyle(color: Colors.grey),
          ),
          trailing: ElevatedButton(
            onPressed: () {
              // Handle cancel request action
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow, // Background color
            ),
            child: const Text("Cancel"),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Noti(),
  ));
}
