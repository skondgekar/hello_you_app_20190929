import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = "Hello You App";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        title: appTitle,
        home: MyHomePage(title: appTitle));
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello You App",
          textDirection: TextDirection.ltr,
        ),
      ),
      body: HomePageContents(),
    );
  }
}

class HomePageContents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UserInput();
  }
}

class UserInput extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return UserInputState();
  }
}

class UserInputState extends State<UserInput> {
  String name = "";
  final currencies = ["Dollars", "Euro", "Pounds"];
  String _currency = "Dollars";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(hintText: "Insert your name here"),
            onSubmitted: (String string) {
              setState(() {
                name = string;
              });
            },
          ),
          DropdownButton(
            items: ["Dollars", "Euro", "Pounds"].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  textDirection: TextDirection.ltr,
                ),
              );
            }).toList(),
            onChanged: (String value) {},
          ),
          Text("Hello " + name)
        ],
      ),
    );
  }
}
