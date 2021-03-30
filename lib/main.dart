import 'dart:math';
import 'package:flutter/material.dart';
import 'package:absi_app/absiz_table.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int vValue = 0;
  int vHeight = 0;
  int vWeight = 0;
  int vWaist = 0;
  double absi = 0;
  double absiz = 0;
  String risk = " ";

  final TextEditingController ageController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController waistController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isButtonPressed = false;
    return MaterialApp(
      title: "ABSI Calculator",
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.teal[900],
          centerTitle: true,
          title: Text("ABSI Calculator"),
        ),
        body: Center(
            child: Container(
                width: 330,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 230,
                          height: 45,
                          color: Colors.teal[200],
                          child: Text(
                            "  " + "Sex",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                            height: 45,
                            width: 100,
                            color: Colors.teal[200],
                            child: Container(
                                child: DropdownButton(
                              value: vValue,
                              items: [
                                DropdownMenuItem(
                                  child: Text("Male",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.blue[900])),
                                  value: 0,
                                ),
                                DropdownMenuItem(
                                  child: Text("Female",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.blue[900])),
                                  value: 1,
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  vValue = value;
                                });
                              },
                            )))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 230,
                          height: 45,
                          color: Colors.teal[100],
                          child: Text(
                            "  " + "Age",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          width: 100,
                          height: 45,
                          color: Colors.teal[100],
                          child: TextField(
                            controller: ageController,
                            keyboardType: TextInputType.number,
                            decoration:
                                InputDecoration(suffixText: "years" + "  "),
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 230,
                          height: 45,
                          color: Colors.teal[200],
                          child: Text(
                            "  " + "Height",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          width: 50,
                          height: 45,
                          color: Colors.teal[200],
                          child: TextField(
                            controller: heightController,
                            keyboardType: TextInputType.number,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                            height: 45,
                            alignment: Alignment.centerRight,
                            width: 50,
                            color: Colors.teal[200],
                            child: Container(
                                child: DropdownButton(
                              value: vHeight,
                              items: [
                                DropdownMenuItem(
                                  child: Text("cm",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.blue[900])),
                                  value: 0,
                                ),
                                DropdownMenuItem(
                                  child: Text("m",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.blue[900])),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Text("in",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.blue[900])),
                                  value: 2,
                                ),
                                DropdownMenuItem(
                                  child: Text("ft",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.blue[900])),
                                  value: 3,
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  vHeight = value;
                                });
                              },
                            )))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 230,
                          height: 45,
                          color: Colors.teal[100],
                          child: Text(
                            "  " + "Weight",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          width: 50,
                          height: 45,
                          color: Colors.teal[100],
                          child: TextField(
                            controller: weightController,
                            keyboardType: TextInputType.number,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                            height: 45,
                            width: 50,
                            color: Colors.teal[100],
                            child: Container(
                                child: DropdownButton(
                              value: vWeight,
                              items: [
                                DropdownMenuItem(
                                  child: Text("kg",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.blue[900])),
                                  value: 0,
                                ),
                                DropdownMenuItem(
                                  child: Text("lb",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.blue[900])),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Text("stone",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.blue[900])),
                                  value: 2,
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  vWeight = value;
                                });
                              },
                            )))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 230,
                          height: 45,
                          color: Colors.teal[200],
                          child: Text(
                            "  " + "Waist circumference",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          width: 50,
                          height: 45,
                          color: Colors.teal[200],
                          child: TextField(
                            controller: waistController,
                            keyboardType: TextInputType.number,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                            height: 45,
                            width: 50,
                            color: Colors.teal[200],
                            child: Container(
                                child: DropdownButton(
                              value: vWaist,
                              items: [
                                DropdownMenuItem(
                                  child: Text("cm",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.blue[900])),
                                  value: 0,
                                ),
                                DropdownMenuItem(
                                  child: Text("m",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.blue[900])),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Text("in",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.blue[900])),
                                  value: 2,
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  vWaist = value;
                                });
                              },
                            )))
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 150,
                          height: 50,
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                            color: isButtonPressed
                                ? Colors.teal
                                : Colors.teal[900],
                            child: Text("Calculate",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            onPressed: calculate,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 330,
                          height: 45,
                          color: Colors.teal[400],
                          child: Text(
                            "  " + "Results",
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 220,
                          height: 45,
                          color: Colors.teal[100],
                          child: Text(
                            "  " + "ABSI",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          width: 110,
                          height: 45,
                          color: Colors.teal[100],
                          child: Text(
                            absi.toStringAsFixed(5) + "    ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 220,
                          height: 45,
                          color: Colors.teal[100],
                          child: Text(
                            "  " + "ABSI z-score",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          width: 110,
                          height: 45,
                          color: Colors.teal[100],
                          child: Text(
                            absiz.toStringAsFixed(3) + "    ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(children: [
                      Container(
                          width: 330,
                          height: 45,
                          child: RichText(
                              text: TextSpan(
                                  text:
                                      "According to your ABSI z score, your premature mortality risk is ",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue[900]),
                                  children: [
                                TextSpan(
                                    text: risk,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    )),
                              ]))),
                    ]),
                  ],
                ))),
      ),
    );
  }

  double convertHeight(int h) {
    double height;
    switch (h) {
      case 0:
        height = (double.parse(heightController.text)) / 100;
        break;
      case 1:
        height = (double.parse(heightController.text));
        break;
      case 2:
        height = (double.parse(heightController.text)) * 0.0254;
        break;
      case 3:
        height = (double.parse(heightController.text)) * 0.3048;
        break;

      default:
    }
    return height;
  }

  double convertWeight(int w) {
    double weight;
    switch (w) {
      case 0:
        weight = (double.parse(weightController.text));
        break;
      case 1:
        weight = (double.parse(weightController.text)) * 0.453592;
        break;
      case 2:
        weight = (double.parse(weightController.text)) * 6.35029;
        break;

      default:
    }
    return weight;
  }

  double convertWaist(int w) {
    double waist;
    switch (w) {
      case 0:
        waist = (double.parse(waistController.text)) / 100;
        break;
      case 1:
        waist = (double.parse(waistController.text));
        break;
      case 2:
        waist = (double.parse(waistController.text)) * 0.0254;
        break;

      default:
    }
    return waist;
  }

  double calculateABSI() {
    double height = (double.parse(heightController.text));
    double weight = (double.parse(weightController.text));
    double waist = (double.parse(waistController.text));

    height = convertHeight(vHeight);
    weight = convertWeight(vWeight);
    waist = convertWaist(vWaist);

    double bmi = weight / (pow(height, 2));
    double absi = waist / ((pow(bmi, 2 / 3)) * (pow(height, 1 / 2)));
    return absi;
  }

  double calculateABSIZ() {
    int age = (int.parse(ageController.text)) - 2;
    absi = calculateABSI();
    double mean = absiz_table().zscore[age][vValue][1];
    double sd = absiz_table().zscore[age][vValue][2];
    absiz = (absi - mean) / sd;
    return absiz;
  }

  void resultImplementation() {
    if (absiz < -0.868) {
      risk = "very low.";
    } else if ((absiz > -0.868) && (absiz <= -0.272)) {
      risk = "low.";
    } else if ((absiz > -0.272) && (absiz <= 0.229)) {
      risk = "average.";
    } else if ((absiz > 0.229) && (absiz <= 0.798)) {
      risk = "high.";
    } else if (absiz > 0.798) {
      risk = "very high.";
    }
  }

  void calculate() {
    setState(() {
      absiz_table();
      absi = calculateABSI();

      absiz = calculateABSIZ();
      resultImplementation();

      print(absi);
      print(absiz);
    });
  }
}
