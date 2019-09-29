import 'package:flutter/material.dart';
import 'package:hello_you/data/currency_codes.dart' as currency_codes;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = "Trip Cost Calculator";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.indigo),
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
          style: TextStyle(color: Colors.white),
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
    return UserInputState();
  }
}

class UserInputState extends State<UserInput> {
  String result = "";
  final currencies = currency_codes.currencies;
  String _currency = "INR";

  // Controllers
  TextEditingController distanceController = TextEditingController();
  TextEditingController milageController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
      child: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: TextField(
                controller: distanceController,
                decoration: InputDecoration(
                  hintText: "e.g.  1234",
                  labelStyle: Theme.of(context).textTheme.title,
                  labelText: "Distance",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0)),
                ),
                keyboardType: TextInputType.numberWithOptions(),
              )),
          Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: TextField(
                controller: milageController,
                decoration: InputDecoration(
                  hintText: "e.g.  55",
                  labelStyle: Theme.of(context).textTheme.title,
                  labelText: "Distance per unit / Milage",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0)),
                ),
                keyboardType: TextInputType.numberWithOptions(),
              )),
          Row(
            children: <Widget>[
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: TextField(
                        controller: priceController,
                        decoration: InputDecoration(
                          hintText: "e.g.  300",
                          labelStyle: Theme.of(context).textTheme.title,
                          labelText: "Price",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6.0)),
                        ),
                        keyboardType: TextInputType.numberWithOptions(),
                      ))),
                      Container(width: 20.0,),
              Expanded(
                  child: DropdownButton(
                items: currencies.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      textDirection: TextDirection.ltr,
                      textScaleFactor: 1.5,
                    ),
                  );
                }).toList(),
                value: _currency,
                onChanged: (String value) {
                  setState(() {
                    _currency = value;
                  });
                },
              )),
            ],
          ),
          RaisedButton(
            color: Theme.of(context).primaryColorDark,
            textColor: Theme.of(context).primaryColorLight,
            child: Text(
              "Submit",
              textDirection: TextDirection.rtl,
              textScaleFactor: 1.5,
            ),
            onPressed: () {
              setState(() {
                result = distanceController.text;
              });
            },
          ),
          Text("Hello " + result)
        ],
      ),
    );
  }
}
