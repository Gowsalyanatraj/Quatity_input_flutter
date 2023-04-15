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
  int valueHolder = 20;

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
                body: Center(
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
          Padding(
            padding: const EdgeInsets.only(left: 180),
            child: Container(
              height: 600,
              width: 1000,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 150,
                    ),
                    child: Container(
                        color: Colors.teal.shade100,
                        width: 400,
                        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Text('Manual Mode Speed'),
                            Slider(
                                value: valueHolder.toDouble(),
                                min: 1,
                                max: 100,
                                divisions: 100,
                                activeColor: Colors.teal,
                                inactiveColor: Colors.grey,
                                label: '${valueHolder.round()}',
                                onChanged: (double newValue) {
                                  setState(() {
                                    valueHolder = newValue.round();
                                  });
                                },
                                semanticFormatterCallback: (double newValue) {
                                  return '${newValue.round()}';
                                })
                          ],
                        )),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 250),
                          child: const Text(
                            'X- axis',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(width: 30),
                        QuantityInput(
                            type: QuantityInputType.double,
                            value: steppedDoubleInput,
                            step: 100,
                            decimalDigits: 1,
                            onChanged: (value) => setState(() =>
                                steppedDoubleInput =
                                    double.parse(value.replaceAll(',', '')))),
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
                                steppedDoubleInput =
                                    double.parse(value.replaceAll(',', '')))),
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
                                steppedDoubleInput =
                                    double.parse(value.replaceAll(',', '')))),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 240),
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
                                steppedDoubleInput =
                                    double.parse(value.replaceAll(',', '')))),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 240),
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
                                steppedDoubleInput =
                                    double.parse(value.replaceAll(',', '')))),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 243),
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
                                steppedDoubleInput =
                                    double.parse(value.replaceAll(',', '')))),
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
          ),
        ])))));
  }
}
