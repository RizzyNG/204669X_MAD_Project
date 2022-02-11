import 'package:flutter/material.dart';
import 'bookings.dart';
import 'package:flutter/foundation.dart';

class BookingDetails extends StatefulWidget {
  final Product data;
  const BookingDetails({Key key, @required this.data}) : super(key: key);

  @override
  State<BookingDetails> createState() => BookingDetailsState(data);
}

class BookingDetailsState extends State<BookingDetails> {
  int quantity = 0;
  final Product data;

  BookingDetailsState(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text('Event Deatils'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.bookingName,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.red),
                ),
                Text(
                  "\$${data.price.toStringAsFixed(2)}",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 350,
                height: 200,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red, width: 5),
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("images/${data.image}"),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              data.information,
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.bookmark_add,
                    color: Colors.green,
                  ),
                  onPressed: () {
                    const snackBar = SnackBar(
                        content: Text(
                      "Event Booked",
                    ));

                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
