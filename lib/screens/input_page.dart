import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import '../components/reusable_card.dart';
import '../constants.dart';
import 'results_page.dart';
import '../components/bottom_button.dart';
import 'package:bmi_calculator/calculatorbrain.dart';

enum gender { male, female }

class Input_page extends StatefulWidget {
  const Input_page({Key? key}) : super(key: key);

  @override
  State<Input_page> createState() => _Input_pageState();
}

class _Input_pageState extends State<Input_page> {
  int tempWeight = 40;
  String weight = '40';
  String age = '10';
  int tempAge = 10;
  Color male = kInactiveColour;
  Color female = kInactiveColour;
  int hieght = 180;
  void update(gender type) {
    if (type == gender.male) {
      if (male == kInactiveColour) {
        male = kActiveColour;
        female = kInactiveColour;
      } else {
        male = kInactiveColour;
        female = kActiveColour;
      }
    }
    if (type == gender.female) {
      if (female == kInactiveColour) {
        female = kActiveColour;
        male = kInactiveColour;
      } else {
        female = kInactiveColour;
        male = kActiveColour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('bmi'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: reusable_card(
                    onPress: () {
                      setState(() {
                        update(gender.male);
                      });
                    },
                    ReusableCardChild: iconContent(
                      i: FontAwesomeIcons.mars,
                      gender: "MALE",
                    ),
                    colour: male,
                  ),
                ),
                Expanded(
                  child: reusable_card(
                    onPress: () {
                      setState(() {
                        update(gender.female);
                      });
                    },
                    ReusableCardChild: iconContent(
                      i: FontAwesomeIcons.venus,
                      gender: "FEMALE",
                    ),
                    colour: female,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: reusable_card(
              ReusableCardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HIEGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        hieght.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      thumbColor: Color(0xFF8D8E98),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                      overlayColor: Color(0x1f8D8E98),
                      activeTrackColor: Colors.red,
                      inactiveTrackColor: Colors.blueGrey,
                    ),
                    child: Slider(
                        value: hieght.toDouble(),
                        max: 240.0,
                        min: 100.0,
                        onChanged: (double newHieght) {
                          setState(() {
                            hieght = newHieght.toInt();
                          });
                        }),
                  )
                ],
              ),
              colour: Color(0xFF272A4E),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: reusable_card(
                    colour: Color(0xFF272A4E),
                    ReusableCardChild: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Weight',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight,
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FloatingActionButton(
                                  heroTag: "btn1",
                                  child: Icon(
                                    Icons.add,
                                    size: 50,
                                    color: Colors.lightGreenAccent[700],
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      tempWeight = tempWeight + 1;
                                      weight = tempWeight.toString();
                                    });
                                  }),
                              SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                  heroTag: "btn2",
                                  child: Icon(
                                    Icons.remove,
                                    size: 50,
                                    color: Colors.orangeAccent[700],
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      tempWeight = tempWeight - 1;
                                      weight = tempWeight.toString();
                                    });
                                  })
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: reusable_card(
                    colour: Color(0xFF272A4E),
                    ReusableCardChild: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Age',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            age,
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FloatingActionButton(
                                  heroTag: "btn3",
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.lightGreenAccent[700],
                                    size: 50,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      tempAge = tempAge + 1;
                                      age = tempAge.toString();
                                    });
                                  }),
                              SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                  heroTag: "btn4",
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.orangeAccent[700],
                                    size: 50,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      tempAge = tempAge - 1;
                                      age = tempAge.toString();
                                    });
                                  })
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Calculate(
              ontap: () => () {
                CalculateBrain calc =
                    CalculateBrain(hieght: hieght, weight: tempWeight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Results_page(
                      bmi: calc.CalculateBMI(),
                      result: calc.getresult(),
                      interpretation: calc.getinterpretation(),
                    ),
                  ),
                );
              },
              buttonTitle: 'Calculate',
            ),
          ),
        ],
      ),
    );
  }
}

//themes on floating action button
// floatingActionButton: Theme(
// data: ThemeData(),
// child: FloatingActionButton(
// child: Icon(Icons.add),
// onPressed: () {},
// ),
// ),
