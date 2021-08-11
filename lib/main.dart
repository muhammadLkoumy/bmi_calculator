import 'package:bmi_calculator/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double height = 160;
  double weight = 60;
  double age = 14;
  bool isMale = true;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.deepOrangeAccent,
            statusBarIconBrightness: Brightness.light,
          ),
          title: Text(
            'bmi calculator'.toUpperCase(),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
          ),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(
                    top: 12.0,
                    bottom: 6.0,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: isMale
                                  ? Colors.deepOrangeAccent
                                  : Colors.grey[300],
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Image(
                                      image:
                                          AssetImage('assets/images/male.png'),
                                      height: 60.0,
                                      width: 80.0,
                                      color:
                                          isMale ? Colors.white : Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'MALE',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          isMale ? Colors.white : Colors.black,
                                    ),
                                  ),
                                ],
                                crossAxisAlignment: CrossAxisAlignment.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: !isMale
                                  ? Colors.deepOrangeAccent
                                  : Colors.grey[300],
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/female.png'),
                                      height: 80.0,
                                      width: 80.0,
                                      color:
                                          !isMale ? Colors.white : Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'FEMALE',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          !isMale ? Colors.white : Colors.black,
                                    ),
                                  ),
                                ],
                                crossAxisAlignment: CrossAxisAlignment.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(
                    top: 6.0,
                    bottom: 12.0,
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'HEIGHT',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Row(
                            textBaseline: TextBaseline.alphabetic,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${height.round()}',
                                style: TextStyle(
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'cm',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Slider(
                            value: height,
                            max: 220,
                            min: 80,
                            onChanged: (value) {
                              setState(() {
                                height = value;
                              });
                            },
                            activeColor: Colors.deepOrangeAccent,
                            inactiveColor: Colors.amber,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(
                    top: 0.0,
                    bottom: 12.0,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Text(
                                  'WEIGHT',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Text(
                                  '${weight.round()}',
                                  style: TextStyle(
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  children: [
                                    FloatingActionButton(
                                      backgroundColor: Colors.deepOrangeAccent,
                                      heroTag: 'weight++',
                                      onPressed: () {
                                        setState(() {
                                          if (weight < 250) {
                                            weight++;
                                          }
                                        });
                                      },
                                      mini: true,
                                      child: Icon(Icons.add),
                                    ),
                                    Spacer(),
                                    FloatingActionButton(
                                      backgroundColor: Colors.deepOrangeAccent,
                                      heroTag: 'weight--',
                                      onPressed: () {
                                        setState(() {
                                          if (weight > 40) {
                                            weight--;
                                          }
                                        });
                                      },
                                      mini: true,
                                      child: Icon(Icons.remove),
                                    ),
                                  ],
                                ),
                              ],
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Text(
                                  'AGE',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Text(
                                  '${age.round()}',
                                  style: TextStyle(
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  children: [
                                    FloatingActionButton(
                                      backgroundColor: Colors.deepOrangeAccent,
                                      heroTag: 'age++',
                                      onPressed: () {
                                        setState(() {
                                          if (age < 110) {
                                            age++;
                                          }
                                        });
                                      },
                                      mini: true,
                                      child: Icon(Icons.add),
                                    ),
                                    Spacer(),
                                    FloatingActionButton(
                                      backgroundColor: Colors.deepOrangeAccent,
                                      heroTag: 'age--',
                                      onPressed: () {
                                        setState(() {
                                          if (age > 1) {
                                            age--;
                                          }
                                        });
                                      },
                                      mini: true,
                                      child: Icon(Icons.remove),
                                    ),
                                  ],
                                ),
                              ],
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 40.0,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Builder(
                  builder: (context) => MaterialButton(
                    onPressed: () {
                      result = (weight / height / height) * 1000;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => ResultScreen(
                                  gender: isMale ? 'Male' : 'Female',
                                  height: height,
                                  weight: weight,
                                  age: age,
                                  result: result,
                                )),
                      );
                    },
                    color: Colors.deepOrangeAccent,
                    child: Text(
                      'calculate'.toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
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
