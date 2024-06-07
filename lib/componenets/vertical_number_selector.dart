import 'package:flutter/material.dart';

class NumberHighlightScreen extends StatefulWidget {
  @override
  _NumberHighlightScreenState createState() => _NumberHighlightScreenState();
}

class _NumberHighlightScreenState extends State<NumberHighlightScreen> {
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  int? selectedNumber;

  void selectNumber(int number) {
    setState(() {
      selectedNumber = number;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: numbers.map((number) {
          bool isSelected = selectedNumber == number;
          return GestureDetector(
            onTap: () => selectNumber(number),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                number.toString(),
                style: TextStyle(
                  fontSize: 32.0,
                  color: isSelected ? Colors.white : Colors.purple,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  shadows: isSelected
                      ?[
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.5),
                      blurRadius: 30.0,
                      spreadRadius: 10.0,
                    ),
                    BoxShadow(
                      color: Colors.blueAccent.withOpacity(0.5),
                      blurRadius: 60.0,
                      spreadRadius: 20.0,
                    ),
                    BoxShadow(
                      color: Colors.purple.withOpacity(0.5),
                      blurRadius: 100.0,
                      spreadRadius: 50.0,
                    ),
                  ]
                      : [],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
