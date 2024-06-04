import 'package:flutter/material.dart';

class RepoHomePage extends StatelessWidget {
  const RepoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(170, 0, 0, 1.0),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(
                height: 40,
                width: 40,
                child: Image.asset(
                  'assets/img/ittp_logo.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(width: 8.0), // Space between logo and text
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Perpustakaan',
                    style: TextStyle(
                      fontSize: 18, // Adjust the size
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'IT Telkom Purwokerto',
                    style: TextStyle(
                      fontSize: 14, // Adjust the size
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String result) {
              switch (result) {
                case 'home':
                  Navigator.pushReplacementNamed(context, '/');
                  break;
                case 'reservation':
                  Navigator.pushReplacementNamed(context, '/reservation');
                  break;
                // Add other cases here
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'home',
                child: Text('Home'),
              ),
              const PopupMenuItem<String>(
                value: 'reservation',
                child: Text('Room Reservation'),
              ),
              // Add other menu items here
            ],
            icon: const Icon(Icons.menu, color: Colors.white),
          ),
        ],
        title: const SizedBox.shrink(),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Repositori Surat',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 120.0, // Specify a fixed height
                      decoration: BoxDecoration(
                        color: Colors.grey
                            .shade200, // Background color for the container
                        borderRadius:
                            BorderRadius.circular(8.0), // Border radius
                      ),
                      padding: const EdgeInsets.all(
                          8.0), // Padding inside the container
                      child: Image.asset(
                        'assets/img/faculty_logo/fif.png', // Update with the correct image path
                        fit: BoxFit
                            .contain, // Ensure the image fits within the container
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 120.0, // Specify a fixed height
                      decoration: BoxDecoration(
                        color: Colors.grey
                            .shade200, // Background color for the container
                        borderRadius:
                            BorderRadius.circular(8.0), // Border radius
                      ),
                      padding: const EdgeInsets.all(
                          8.0), // Padding inside the container
                      child: Image.asset(
                        'assets/img/faculty_logo/ftte.png', // Update with the correct image path
                        fit: BoxFit
                            .contain, // Ensure the image fits within the container
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 120.0, // Specify a fixed height
                      decoration: BoxDecoration(
                        color: Colors.grey
                            .shade200, // Background color for the container
                        borderRadius:
                            BorderRadius.circular(8.0), // Border radius
                      ),
                      padding: const EdgeInsets.all(
                          8.0), // Padding inside the container
                      child: Image.asset(
                        'assets/img/faculty_logo/frid.png', // Update with the correct image path
                        fit: BoxFit
                            .contain, // Ensure the image fits within the container
                      ),
                    ),
                  ),
                ],
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
    home: RepoHomePage(),
  ));
}
