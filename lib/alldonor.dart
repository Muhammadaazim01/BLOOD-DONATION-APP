import 'package:flutter/material.dart';

class AllDonor extends StatefulWidget {
  const AllDonor({super.key});

  @override
  State<AllDonor> createState() => _AllDonorState();
}

class Donor {
  final String name;
  final String city;
  final String contact;
  final String lastDonationDate;

  Donor(this.name, this.city, this.contact, this.lastDonationDate);
}

final List<Donor> donorData = [
  Donor("John Doe", "New York", "123-456-7890", "2023-01-15"),
  Donor("Jane Smith", "Los Angeles", "987-654-3210", "2023-02-10"),
  Donor("Bob Johnson", "Chicago", "555-123-4567", "2023-03-20"),
  Donor("Aazim", "pakistan", "555-123-4567", "2023-03-20"),
  Donor("Shahzaib", "Pakistan", "555-123-4567", "2023-03-20"),
  Donor("Amit", "India", "555-123-4567", "2023-03-20"),
  Donor("Kunal", "India", "555-123-4567", "2023-03-20"),
  Donor("lim chung", "Chaina", "555-123-4567", "2023-03-20"),

  // Add more donor data here
];

class _AllDonorState extends State<AllDonor> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.red,
          title: Text(' All DONORS'),
          // actions: <Widget>[
          //   IconButton(
          //     icon: Icon(Icons.person_2_outlined),
          //     onPressed: () {
          //       // Add your action here
          //     },
          //   ),
          // ],
        ),
        body: ListView.builder(
          itemCount: donorData.length,
          itemBuilder: (context, index) {
            final donor = donorData[index];
            return Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name: ${donor.name}',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text('City: ${donor.city}'),
                  Text('Contact: ${donor.contact}'),
                  Text('Last Donation Date: ${donor.lastDonationDate}'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
