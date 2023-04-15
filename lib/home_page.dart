import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quantity_input/quantity_input.dart';

void main() {
  runApp(QuantityInputSample());
}

class QuantityInputSample extends StatefulWidget {
  @override
  State<QuantityInputSample> createState() => _QuantityInputSampleState();
}

class _QuantityInputSampleState extends State<QuantityInputSample> {
  int simpleIntInput = 1;
  int steppedIntInput = 1;
  double simpleDoubleInput = 1;
  double steppedDoubleInput = 1;
  var selectedRange = RangeValues(0.2, 0.8);
  double startval = 1, endval = 100;
  //iniital value for start range and end range
  double startval1 = -1, endval1 = -100;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: SafeArea(
            child: Scaffold(
                appBar: AppBar(title: Center(child: Text('Quantity input'))),
                body: Center(
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Container(
                    height: 600,
                    width: 1000,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(children: [
                        Container(
                            padding:
                                EdgeInsets.only(top: 20, left: 20, right: 20),
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("End Value: $endval",
                                    style: TextStyle(fontSize: 20)),
                                RangeSlider(
                                  values: RangeValues(1, 100),
                                  onChanged: (value) {},
                                )
                              ],
                            )),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 250),
                                child: const Text(
                                  'X- axis',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(width: 30),
                              QuantityInput(
                                  type: QuantityInputType.double,
                                  value: steppedDoubleInput,
                                  step: 100,
                                  decimalDigits: 1,
                                  onChanged: (value) => setState(() =>
                                      steppedDoubleInput = double.parse(
                                          value.replaceAll(',', '')))),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 250),
                          child: Row(
                            children: [
                              const Text(
                                'y- axis',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 30),
                              QuantityInput(
                                  type: QuantityInputType.double,
                                  value: steppedDoubleInput,
                                  step: 0.1,
                                  decimalDigits: 1,
                                  onChanged: (value) => setState(() =>
                                      steppedDoubleInput = double.parse(
                                          value.replaceAll(',', '')))),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 250),
                          child: Row(
                            children: [
                              const Text(
                                'Z- axis',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 30),
                              QuantityInput(
                                  type: QuantityInputType.double,
                                  value: steppedDoubleInput,
                                  step: 0.1,
                                  decimalDigits: 1,
                                  onChanged: (value) => setState(() =>
                                      steppedDoubleInput = double.parse(
                                          value.replaceAll(',', '')))),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 250),
                          child: Row(
                            children: [
                              const Text(
                                'Rx- axis',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 30),
                              QuantityInput(
                                  type: QuantityInputType.double,
                                  value: steppedDoubleInput,
                                  step: 0.1,
                                  decimalDigits: 1,
                                  onChanged: (value) => setState(() =>
                                      steppedDoubleInput = double.parse(
                                          value.replaceAll(',', '')))),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 250),
                          child: Row(
                            children: [
                              const Text(
                                'Ry- axis',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 30),
                              QuantityInput(
                                  type: QuantityInputType.double,
                                  value: steppedDoubleInput,
                                  step: 0.1,
                                  decimalDigits: 1,
                                  onChanged: (value) => setState(() =>
                                      steppedDoubleInput = double.parse(
                                          value.replaceAll(',', '')))),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 250),
                          child: Row(
                            children: [
                              const Text(
                                'Rz- axis',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 30),
                              QuantityInput(
                                  type: QuantityInputType.double,
                                  value: steppedDoubleInput,
                                  step: 0.1,
                                  decimalDigits: 1,
                                  onChanged: (value) => setState(() =>
                                      steppedDoubleInput = double.parse(
                                          value.replaceAll(',', '')))),
                            ],
                          ),
                        ),
                        //   Padding(
                        //     padding: const EdgeInsets.only(left: 50),
                        //     child: Text('Value: $steppedDoubleInput',
                        //         style: TextStyle(
                        //             color: Colors.black,
                        //             fontWeight: FontWeight.bold)),
                        //   )
                        // ],
                      ]),
                    ),
                  ),
                ])))));
  }
}
