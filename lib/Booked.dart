import 'package:flutter/material.dart';

class BookedPage extends StatefulWidget {
  const BookedPage({Key key}) : super(key: key);

  @override
  _BookedPageState createState() => _BookedPageState();
}

class _BookedPageState extends State<BookedPage> {
  final List<String> images = <String>[
    'Item5.jpg',
    'Item6.jpg',
    'Item2.jpg',
    'Item4.jpg',
  ];
  final List<double> price = <double>[
    15.02,
    8.03,
    15.03,
    19.04,
  ];
  final List<String> productName = <String>[
    "Stand-Up Paddling",
    "Bouldering",
    "Tennis",
    "Wakeboarding",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue[50],
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text('Book Events'),
          ),
          body: bodyContent(),
        ));
  }

  bodyContent() {
    return ListView.builder(
        itemCount: productName.length,
        itemBuilder: (context, index) {
          return Card(
            color: const Color(0xFFEFDFBB),
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: Image(
                image: AssetImage("images/${images[index]}"),
                width: 100,
                fit: BoxFit.cover,
              ),
              title: Text(
                "${productName[index]}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Date: ${price[index].toStringAsFixed(2)}.22"),
              trailing: IconButton(
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onPressed: () {
                  SnackBar snackBar = SnackBar(
                    content: Text("Event Removed :  ${productName[index]}"),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  setState(() {
                    productName.removeAt(index);
                  });
                },
              ),
            ),
          );
        });
  }
}
