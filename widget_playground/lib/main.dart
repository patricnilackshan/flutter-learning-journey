import 'package:flutter/material.dart';

void main() {
  runApp(MyComparisonApp());
}

class MyComparisonApp extends StatelessWidget {
  const MyComparisonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Stateless vs Stateful Example")),
        body: Row(
          children: [
            // Expanded widgets to take half the screen each
            Expanded(
              child: Container(
                color: Colors.blue.shade50,
                child: const StatelessExample(),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green.shade100,
                child: const StatefulExample(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// --------------------------------------------------
// Stateless Example

class StatelessExample extends StatelessWidget {
  const StatelessExample({super.key});

  @override
  Widget build(BuildContext context) {
    String displayText = "Patric"; // Local variable

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Stateless Widget",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Text(displayText, style: const TextStyle(fontSize: 24)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              print("Before change (Stateless): $displayText");

              displayText = "Nilackshan"; // Changes variable, but no UI update

              print("After change (Stateless): $displayText");
            },
            child: const Text("Change Text"),
          ),
        ],
      ),
    );
  }
}

// --------------------------------------------------
// Stateful Example

class StatefulExample extends StatefulWidget {
  const StatefulExample({super.key});

  @override
  State<StatefulExample> createState() {
    return _StatefulExampleState();
  }
}

class _StatefulExampleState extends State<StatefulExample> {
  String _displayText = "Patric"; // State variable

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Stateful Widget",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Text(_displayText, style: const TextStyle(fontSize: 24)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              print("Before change (Stateful): $_displayText");

              setState(() {
                _displayText = "Nilackshan"; // Triggers UI rebuild
              });

              print("After change (Stateful): $_displayText");
            },
            child: const Text("Change Text"),
          ),
        ],
      ),
    );
  }
}
