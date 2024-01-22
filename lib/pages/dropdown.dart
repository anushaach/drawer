import 'package:flutter/material.dart';

class Dropdown extends StatelessWidget {
  const Dropdown({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter DropDownButton',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
// Initial Selected Value
  String dropdownvalue = 'Item 1';

// List of items in our dropdown menu
  var items = [
    'Anusha',
    'Samikshya',
    'Ankita ',
    'Ram ',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              value: dropdownvalue,
              icon: Icon(Icons.arrow_drop_down),
              items: items.map(
                (String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text("items"),
                  );
                },
              ).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
