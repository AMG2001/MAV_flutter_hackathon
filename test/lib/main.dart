import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'train',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int value = 1;
  String valueInString = "1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 1"),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                valueInString,
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {
                        if (value < 100) {
                          value *= 2;
                          setState(() {
                            if (value >= 100) {
                              value = 100;
                              valueInString = "value become more than 100";
                            } else {
                              valueInString = value.toString();
                            }
                          });
                        }
                      },
                      child: Text("*2")),
                  TextButton(
                      onPressed: () {
                        if (value < 100) {
                          value *= 3;
                          setState(() {
                            if (value >= 100) {
                              value = 100;
                              valueInString = "value become more than 100";
                            } else {
                              valueInString = value.toString();
                            }
                          });
                        }
                      },
                      child: Text("*3")),
                  TextButton(
                      onPressed: () {
                        if (value < 100) {
                          value *= 4;
                          setState(() {
                            if (value >= 100) {
                              value = 100;
                              valueInString = "value become more than 100";
                            } else {
                              valueInString = value.toString();
                            }
                          });
                        }
                      },
                      child: Text("*4"))
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {
                        value ~/= 2;
                        setState(() {
                          if (value < 1) {
                            valueInString = "value become less than 1";
                            value = 1;
                          } else {
                            valueInString = value.toString();
                          }
                        });
                      },
                      child: Text("/2")),
                  TextButton(
                      onPressed: () {
                        value ~/= 3;
                        setState(() {
                          if (value < 1) {
                            valueInString = "value become less than 1";
                            value = 1;
                          } else {
                            valueInString = value.toString();
                          }
                        });
                      },
                      child: Text("/3")),
                  TextButton(
                      onPressed: () {
                        value ~/= 4;
                        setState(() {
                          if (value < 1) {
                            valueInString = "value become less than 1";
                            value = 1;
                          } else {
                            valueInString = value.toString();
                          }
                        });
                      },
                      child: Text("/4"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
