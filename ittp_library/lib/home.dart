import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                'OUR COLLECTION',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  ElevatedButton(
                    onPressed: () {
                      // Handle search button press
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFAA0000), // Custom color
                      padding: const EdgeInsets.all(16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Icon(Icons.search, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 0.7,
                ),
                itemCount: 4, // Adjust the item count as needed
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/img/book${index + 1}.png', // Adjust the image path as needed
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
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
    home: HomePage(),
  ));
}
