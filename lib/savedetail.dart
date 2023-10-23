import 'package:bismillah/manageprofile.dart';
import 'package:flutter/material.dart';

class SaveDetail extends StatelessWidget {
  final String name;
  final String place;
  final String number;
  final String date;
  final String bloodGroup;

  SaveDetail({
    required this.name,
    required this.place,
    required this.number,
    required this.date,
    required this.bloodGroup,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.red,
          title: Text('Save Donor Detail'),
        ),
        body: Column(
          children: [
            buildDetailItem("Name", name),
            buildDetailItem("Place", place),
            buildDetailItem("Number", number),
            buildDetailItem("Date", date),
            buildDetailItem("Blood Group", bloodGroup),
            SizedBox(height: 20), // Add some spacing
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => manageprofile()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                minimumSize: Size(150, 40),
              ),
              child: Text('Save'),
            )
          ],
        ),
      ),
    );
  }

  Widget buildDetailItem(String label, String value) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(value),
        ],
      ),
    );
  }
}
