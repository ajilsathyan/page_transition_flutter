import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Screen1(),
    );
  }
}

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal,
        title: Text("Home Screen"),
        actions: [
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal),
              ),
              onPressed: () {
                setState(() {
                  isSelected = true;
                });
              },
              child: Text("Filters",
                  style: TextStyle(color: Colors.white, fontSize: 18)))
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: 30,
                  itemBuilder: (_, i) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 4),
                      child: Card(
                        elevation: 2,
                        shadowColor: Colors.pink,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 80,
                          margin: EdgeInsets.only(left: 5),
                          child: Row(
                            children: [
                              Text("My name is ${i.toString()}"),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
          if (isSelected)
            Positioned(
              right: 0,
              child: Container(
                width: MediaQuery.of(context).size.width - 170,
                height: MediaQuery.of(context).size.height - 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                    color: Colors.greenAccent),
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          ExpansionTile(
                            title: Text('Range'),
                            children: [
                              ListView.builder(
                                  shrinkWrap: true,
                                  physics: BouncingScrollPhysics(),
                                  itemCount: 5,
                                  itemBuilder: (_, i) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 25),
                                      child: ListTile(
                                        title: Text("Title ${i.toString()}"),
                                      ),
                                    );
                                  }),
                            ],
                          ),
                          ExpansionTile(
                            title: Text("Doctor Category"),
                            children: [
                              ListView.builder(
                                  shrinkWrap: true,
                                  physics: BouncingScrollPhysics(),
                                  itemCount: 5,
                                  itemBuilder: (_, i) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 25),
                                      child: ListTile(
                                        title: Text("Title ${i.toString()}"),
                                      ),
                                    );
                                  }),
                            ],
                          ),
                          ExpansionTile(
                            title: Text('Others'),
                            children: [
                              ListView.builder(
                                  shrinkWrap: true,
                                  physics: BouncingScrollPhysics(),
                                  itemCount: 5,
                                  itemBuilder: (_, i) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 25),
                                      child: ListTile(
                                        title: Text("Title ${i.toString()}"),
                                      ),
                                    );
                                  }),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 10,
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  isSelected = false;
                                });
                              },
                              icon: Icon(Icons.close))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 300,
            color: Colors.transparent,
          )
        ],
      ),
    );
  }
}
