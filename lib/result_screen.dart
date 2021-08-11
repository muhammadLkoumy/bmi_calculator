import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {

  String? gender;
  double? result;
  double? height;
  double? age;
  double? weight;
  ResultScreen({
    required this.gender,
    required this.result,
    required this.weight,
    required this.height,
    required this.age,
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        title: Text(
          'RESULT',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:
          [
            CircleAvatar(
              radius: 60.0,
                backgroundColor: Colors.deepOrangeAccent,
                child: Text(
                    'Gender: $gender',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ),
            CircleAvatar(
              radius: 60.0,
                backgroundColor: Colors.deepOrangeAccent,
                child: Text(
                  'Height: ${height!.round()}',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ),
            CircleAvatar(
              radius: 60.0,
                backgroundColor: Colors.deepOrangeAccent,
                child: Text(
                  'Age: ${age!.round()}',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ),
            CircleAvatar(
              radius: 60.0,
                backgroundColor: Colors.deepOrangeAccent,
                child: Text(
                  'Weight: ${weight!.round()}',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ),
            CircleAvatar(
              radius: 60.0,
                backgroundColor: Colors.deepOrangeAccent,
                child: Text(
                  'Result: ${result!.round()}',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
