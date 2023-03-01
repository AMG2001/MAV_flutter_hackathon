import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "task 2",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String text = "Hi Salah";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 2"),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      text += " , Hi Salah";
                    });
                  },
                  child: Text("Hi Salah")),
              TextButton(
                  onPressed: () {
                    setState(() {
                      text += " , Welcome Amgad";
                    });
                  },
                  child: Text("Welcome Amgad")),
              TextButton(
                  onPressed: () {
                    setState(() {
                      text += " , Fuck you Lefta";
                    });
                  },
                  child: Text("Fuck you Lefta"))
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    text = "Hi Salah";
                  });
                },
                child: Text("Reset Text")),
          )
        ],
      )),
    );
  }
}
