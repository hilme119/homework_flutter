import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.lightBlue[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                // A - B - C Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    topBox("A", Colors.red),
                    const SizedBox(width: 20),
                    topBox("B", Colors.orange),
                    const SizedBox(width: 20),
                    topBox("C", Colors.yellow),
                  ],
                ),

                const SizedBox(height: 30),

                // Fancy Section Title
                const Text(
                  "Fancy Section",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),

                const SizedBox(height: 20),

                // Numbers Grid
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.purple[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          numberBox("1"),
                          const SizedBox(width: 20),
                          numberBox("2"),
                          const SizedBox(width: 20),
                          numberBox("3"),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          numberBox("4"),
                          const SizedBox(width: 20),
                          numberBox("5"),
                          const SizedBox(width: 20),
                          numberBox("6"),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // Info Cards Title
                const Text(
                  "Info Cards",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),

                const SizedBox(height: 20),

                // Info Cards (Centered + Responsive)
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  alignment: WrapAlignment.center,
                  children: [
                    infoCard("23", "Active", Colors.teal),
                    infoCard("15", "Pending", Colors.orange),
                    infoCard("7", "Completed", Colors.green),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Top A-B-C Box Widget
  Widget topBox(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // Number Box Widget
  Widget numberBox(String num) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.purple[300],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        num,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // Info Card Widget
  Widget infoCard(String number, String title, Color color) {
    return Container(
      width: 110,
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            number,
            style: TextStyle(
              color: color,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(
              color: color,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
