import 'package:flutter/material.dart';

class RepoHomePage extends StatelessWidget {
  const RepoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(80.0), // Adjust the height as needed
        child: Container(
          margin: const EdgeInsets.all(8.0), // Add margin
          decoration: BoxDecoration(
            color: const Color(0xFFAA0000), // Custom color
            borderRadius: BorderRadius.circular(16.0), // Border radius
          ),
          child: AppBar(
            backgroundColor: Colors
                .transparent, // Make AppBar transparent to show custom color
            elevation: 0, // Remove AppBar shadow
            leading: Padding(
              padding: const EdgeInsets.all(8.0), // Adjust padding as needed
              child: SizedBox(
                width: 160.0, // Adjust the width to make the image bigger
                height: 40.0, // Adjust the height to make the image bigger
                child: Image.asset(
                  'assets/img/ittp_logo.png',
                  fit: BoxFit
                      .contain, // Ensure the image fits within the constraints
                ),
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.menu),
                color: Colors.white, // Set hamburger menu color to white
                onPressed: () {
                  // Handle menu button press
                },
              ),
            ],
            title: const SizedBox
                .shrink(), // To center the title if any, use SizedBox.shrink()
            centerTitle: true, // Center the title if any
          ),
        ),
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
