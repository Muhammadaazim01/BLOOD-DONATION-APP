import 'package:flutter/material.dart';

class NewDonor extends StatefulWidget {
  final String name;
  final String place;
  final String number;
  final String date;
  final String bloodGroup;

  NewDonor({
    required this.name,
    required this.place,
    required this.number,
    required this.date,
    required this.bloodGroup,
  });

  @override
  State<NewDonor> createState() => _NewDonorState();
}

class _NewDonorState extends State<NewDonor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: ${widget.name}'),
            Text('Place: ${widget.place}'),
            Text('Number: ${widget.number}'),
            Text('Date: ${widget.date}'),
            Text('BloodGroup: ${widget.bloodGroup}'),
          ],
        ),
      ),
    );
  }
}
