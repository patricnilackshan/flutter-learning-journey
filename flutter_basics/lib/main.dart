import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Menu App",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: const Color.fromRGBO(255, 115, 0, 1),
        ),
        body: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              width: double.infinity,
              height: 100,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Noodles",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Chicken Noodles with gravy",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Rs.300",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              width: double.infinity,
              height: 100,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pittu",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Pittu with spicy gravy",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Rs.200",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
