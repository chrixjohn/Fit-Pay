import 'package:flutter/material.dart';
import 'package:fitpay/userdetails.dart'; // Import your editdetails.dart file
import 'package:fitpay/noti.dart'; // Import your noti.dart file

class FitPay extends StatefulWidget {
  const FitPay({Key? key}) : super(key: key);

  @override
  State<FitPay> createState() => _FitPayState();
}

class _FitPayState extends State<FitPay> {
  String dropdownValue = 'Monthly';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void n() {
    // Handle notification click here
    print("Notification icon clicked");
    // Navigate to another page/screen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Noti()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
        ),
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
        actions: [
          Padding(
            padding: const EdgeInsets.all(11),
            child: GestureDetector(
              onTap: n, // Navigate to another page on tap
              child: const Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
          ),
          const Padding(
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
        elevation: 0,
        backgroundColor: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Your Account'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const UserDetails()), // Replace with your UserProfile widget
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Gym Details'),
              onTap: () {
                // Handle navigation or actions here
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // Handle navigation or actions here
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('About us'),
              onTap: () {
                // Handle navigation or actions here
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text(
                'Logout',
                style: TextStyle(color: Colors.red), // Corrected the color
              ),
              onTap: () {
                // Handle navigation or actions here
              },
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
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Pending ",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    TextSpan(
                      text: "Fees",
                      style: TextStyle(color: Colors.yellow, fontSize: 24),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'February - 2024',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Payment dates 1 Feb - 5 Feb',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 16),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: 'Amount to pay ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              TextSpan(
                                text: '₹ 500',
                                style: TextStyle(
                                    color: Colors.yellow, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.yellow,
                          ),
                          child: const Text('Pay'),
                        ),
                        const SizedBox(height: 8),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            side: const BorderSide(color: Colors.white),
                          ),
                          child: const Row(
                            children: [
                              Text('Leave of Ab '),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.yellow,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Missing ",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                        TextSpan(
                          text: "Fees",
                          style: TextStyle(color: Colors.yellow, fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                  DropdownButton<String>(
                    value: dropdownValue,
                    dropdownColor: Colors.black,
                    icon: const Icon(Icons.arrow_downward, color: Colors.white),
                    iconSize: 24,
                    elevation: 16,
                    style: const TextStyle(color: Colors.white),
                    underline: Container(
                      height: 2,
                      color: Colors.yellow,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: <String>['Monthly', 'Yearly']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                height: 200,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(5, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'April 2023',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 16.0,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: const Text(
                                'Absent',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: Colors.yellow,
                              ),
                              child: const Row(
                                children: [
                                  Text('Pay'),
                                  Icon(Icons.arrow_forward,
                                      color: Colors.black),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Payment ",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                        TextSpan(
                          text: "History",
                          style: TextStyle(color: Colors.yellow, fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                  DropdownButton<String>(
                    value: dropdownValue,
                    dropdownColor: Colors.black,
                    icon: const Icon(Icons.arrow_downward, color: Colors.white),
                    iconSize: 24,
                    elevation: 16,
                    style: const TextStyle(color: Colors.white),
                    underline: Container(
                      height: 2,
                      color: Colors.yellow,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: <String>['Monthly', 'Yearly']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(4, (index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 4.0),
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.calendar_today,
                                    color: Colors.yellow),
                                const SizedBox(width: 8),
                                Text(
                                  '${index + 1} - ${[
                                    "february",
                                    "january",
                                    "december",
                                    "november"
                                  ][index]} - 202${4 - index}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              index == 2 ? 'absent' : '₹ 500',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            Icon(
                              index == 2
                                  ? Icons.picture_as_pdf
                                  : Icons.check_circle,
                              color: index == 2 ? Colors.yellow : Colors.green,
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: FitPay(),
  ));
}
