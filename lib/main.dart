import 'package:flutter/material.dart';

void main() {
  runApp(MobileApp());
}

class MobileApp extends StatelessWidget {
  const MobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          toolbarHeight: 80,
          title: Center(
            child: Text(
              "Welcome Home",
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          actions: [
            Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: Icon(Icons.logout),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Logged out"),
                        duration: Duration(seconds: 2),
                        behavior: SnackBarBehavior.fixed,
                        backgroundColor: Colors.red,
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(width: 300,height: 300),
              Center(
                child: Text(
                  "Hello World",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              Builder(
                builder: (context) => Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Elevated button is pressed"),
                          duration: Duration(seconds: 2),
                          backgroundColor: Colors.red,
                        ),
                      );
                    },
                    child: Text('Elevate'),
                  ),
                ),
              ),
              Builder(
                builder: (context) => TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Text button is pressed",),
                        duration: Duration(seconds: 2),
                        backgroundColor: Colors.red,
                      ),
                    );
                  },
                  child: Text("TEXT"),
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(Colors.green),
                    foregroundColor:
                        WidgetStateProperty.all(Colors.white),
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
