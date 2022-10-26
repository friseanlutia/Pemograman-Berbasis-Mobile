import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My AppC',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'MY AppC'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String Name = "Frise Anesha Lutia";
  double counter = 12.0;
  bool IsVisible = true;

  void _perbesarCounter() {
    setState(() {
      counter++;
    });
  }

  void _perkecilCounter() {
    setState(() {
      counter--;
    });
  }

  void _IsVisible() {
    setState(() {
      IsVisible = !IsVisible;
      if (IsVisible) {
        Name = "Frise Anesha Lutia";
      } else {
        Name = "Franlu";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Center(
          child: Container(
            alignment: Alignment.center,
            child: Row(
              children: [
                Text(
                  "My Name",
                )
              ],
            ),
          ),
        ),
      ),
      body: Container(
        child: (Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(),
            Text("$Name",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: counter,
                  color: Color.fromARGB(255, 180, 59, 255),
                )),
            Text(
              "Size $counter",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 180, 59, 255),
              ),
            ),
            IconButton(
              onPressed: _IsVisible,
              tooltip: 'increment',
              icon: Icon(
                Icons.remove_red_eye_outlined,
                color: Color.fromARGB(255, 180, 59, 255),
              ),
            ),
          ],
        ))),
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(left: 25, bottom: 80),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(),
                child: ElevatedButton(
                  onPressed: _perbesarCounter,
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: Color.fromARGB(255, 180, 59, 255),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Font Size",
                        style: TextStyle(fontFamily: ""),
                      ),
                      Icon(Icons.add),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(),
              child: ElevatedButton(
                onPressed: _perkecilCounter,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  foregroundColor: Color.fromARGB(255, 180, 59, 255),
                ),
                child: Row(
                  children: [
                    Text(
                      "Font Size",
                      style: TextStyle(fontFamily: ""),
                    ),
                    Icon(Icons.remove),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
