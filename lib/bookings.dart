import 'package:flutter/material.dart';
import 'package:testing/bookingdetails.dart';

class Product {
  final String image;
  final String bookingName;
  final double price;
  final String information;

  Product(this.image, this.bookingName, this.price, this.information);
}

class BookingsPage extends StatelessWidget {
  final List<String> images = <String>[
    'Item1.jpg',
    'Item2.jpg',
    'Item3.jpg',
    'Item4.jpg',
    'Item5.jpg',
    'Item6.jpg',
    'Item7.jpg',
  ];
  final List<double> price = <double>[
    15.00,
    25.00,
    20.00,
    35.00,
    25.00,
    15.00,
    20.00,
  ];
  final List<String> productName = <String>[
    "Pottery",
    "Tennis",
    "Golf",
    "Wakeboarding",
    "Stand-Up Paddling",
    "Bouldering",
    "Archery",
  ];
  final List<String> information = <String>[
    "Pottery is the process and the products of forming vessels and other objects with clay and other ceramic materials\n\n\nRequirements: Registered as a user",
    "Tennis is a recreational and competitive game played in singles and doubles formats\n\n\nRequirements: Registered as a user",
    "Golf is a cross-country game in which a player strikes a small ball with various clubs from a series of starting points (teeing grounds) into a series of holes on a course\n\n\nRequirements: Registered as a user",
    "Wakeboarding is an extreme sport performed on water\n\n\nRequirements: Swimming experience,\nRegistered as a user",
    "Standup paddleboarding (SUP) is a water sport born from surfing with modern roots in Hawaii\n\n\nRequirements: Swimming experience,\nRegistered as a user",
    "Bouldering is rock climbing stripped down to its raw essentials\n\n\nRequirements: Registered as a user",
    "Archery is the sport, practice, or skill of using a bow to shoot arrows\n\n\nRequirements: Registered as a user",
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
          body: Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: ListView.builder(
              itemCount: images.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Image(
                    image: AssetImage("images/${images[index]}"),
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    "${productName[index]}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("\$${price[index].toStringAsFixed(2)}"),
                  trailing: IconButton(
                    icon: Icon(Icons.bookmark_add),
                    onPressed: () {
                      Product data = new Product(
                          "${images[index]}",
                          "${productName[index]}",
                          price[index],
                          "${information[index]}");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BookingDetails(data: data)),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ));
  }
}
