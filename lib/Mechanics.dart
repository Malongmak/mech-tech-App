// ignore: duplicate_ignore
// ignore: file_names, duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'mechanic_detail_page.dart'; // Make sure to import the detail page

class MechanicsPage extends StatelessWidget {
  const MechanicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white, // Set overall background color
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/Group.png"),
                  alignment: Alignment.topRight,
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(),
                child: const Icon(
                  Icons.notifications,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage("images/five.png"),
                        ),
                        SizedBox(width: 16),
                        Text(
                          'Mutabazi John',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16), // Space for the AppBar
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Available Mechanics',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: _buildMechanicCard(
                          context, // Pass the context
                          'Kate Marian',
                          'Car Mechanics',
                          '10 AM\nDec 23',
                          'images/one.png', // Replace with actual image
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: _buildMechanicCard(
                          context, // Pass the context
                          'Paul Mitchell',
                          'Car Mechanics',
                          '1:30 AM\nDec 23',
                          'images/four.png', // Replace with actual image
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: const Color(0xFF2596BE),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text(
                          'Request A mechanic',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[300],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text(
                          'Compare Prices',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _buildMechanicListItem(
                    'Mukamurisa Leonsi',
                    'Cra Mechanic',
                    'images/three.png',
                  ),
                  _buildMechanicListItem(
                    'Dr. Mukamurisa Leonsi',
                    'Car Mechanic',
                    'images/two.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMechanicCard(
    BuildContext context, // Add context as a parameter
    String name,
    String specialty,
    String time,
    String imagePath,
  ) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(
          color: Color.fromRGBO(
              37, 150, 190, 0.2), // Stroke color with increased reduced opacity
          width: 1, // Stroke width
        ),
      ),
      elevation: 4,
      shadowColor: const Color.fromRGBO(
          36, 170, 219, 0.2), // Shadow color with increased reduced opacity
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white, // White background for the card
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(imagePath),
              ),
              const SizedBox(height: 8),
              Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(specialty),
              Text(time, textAlign: TextAlign.center),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  // Navigate to MechanicDetailPage with the required data
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MechanicDetailPage(
                        name: name,
                        type: specialty,
                        timeAvailable: time,
                        location: 'Your Location', // Provide actual data
                        workDescription:
                            'Work Description', // Provide actual data
                        capabilities: 'Capabilities', // Provide actual data
                        imageUrl:
                            'assets/images/four.png', // Provide actual image URL
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  foregroundColor: Colors.white,
                ),
                child: const Text('View'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMechanicListItem(
    String name,
    String specialty,
    String imagePath,
  ) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
      ),
      title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(specialty),
    );
  }
}

void main() => runApp(const MaterialApp(
      home: MechanicsPage(),
    ));
