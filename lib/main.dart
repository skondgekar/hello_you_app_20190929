import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = "Trip Cost Calculator";
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
  final currencies = [
    "USD",
    "CAD",
    "EUR",
    "AED",
    "AFN",
    "ALL",
    "AMD",
    "ARS",
    "AUD",
    "AZN",
    "BAM",
    "BDT",
    "BGN",
    "BHD",
    "BIF",
    "BND",
    "BOB",
    "BRL",
    "BWP",
    "BYR",
    "BZD",
    "CDF",
    "CHF",
    "CLP",
    "CNY",
    "COP",
    "CRC",
    "CVE",
    "CZK",
    "DJF",
    "DKK",
    "DOP",
    "DZD",
    "EEK",
    "EGP",
    "ERN",
    "ETB",
    "GBP",
    "GEL",
    "GHS",
    "GNF",
    "GTQ",
    "HKD",
    "HNL",
    "HRK",
    "HUF",
    "IDR",
    "ILS",
    "INR",
    "IQD",
    "IRR",
    "ISK",
    "JMD",
    "JOD",
    "JPY",
    "KES",
    "KHR",
    "KMF",
    "KRW",
    "KWD",
    "KZT",
    "LBP",
    "LKR",
    "LTL",
    "LVL",
    "LYD",
    "MAD",
    "MDL",
    "MGA",
    "MKD",
    "MMK",
    "MOP",
    "MUR",
    "MXN",
    "MYR",
    "MZN",
    "NAD",
    "NGN",
    "NIO",
    "NOK",
    "NPR",
    "NZD",
    "OMR",
    "PAB",
    "PEN",
    "PHP",
    "PKR",
    "PLN",
    "PYG",
    "QAR",
    "RON",
    "RSD",
    "RUB",
    "RWF",
    "SAR",
    "SDG",
    "SEK",
    "SGD",
    "SOS",
    "SYP",
    "THB",
    "TND",
    "TOP",
    "TRY",
    "TTD",
    "TWD",
    "TZS",
    "UAH",
    "UGX",
    "UYU",
    "UZS",
    "VEF",
    "VND",
    "XAF",
    "XOF",
    "YER",
    "ZAR",
    "ZMK"
  ];
  String _currency = "USD";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: "Insert your name here",
              labelStyle: Theme.of(context).textTheme.title,
              labelText: "Name"
            ),
            onSubmitted: (String string) {
              setState(() {
                name = string;
              });
            },
          ),
          DropdownButton(
            items: currencies.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  textDirection: TextDirection.ltr,
                ),
              );
            }).toList(),
            value: _currency,
            onChanged: (String value) {
              setState(() {
                _currency = value;
              });
            },
          ),
          Text("Hello " + name)
        ],
      ),
    );
  }
}
