import 'package:bismillah/alldonor.dart';
import 'package:bismillah/donordetail.dart';

import 'package:bismillah/widget/custombar.dart';
import 'package:flutter/material.dart';

class googlemap extends StatefulWidget {
  const googlemap({Key? key}) : super(key: key);

  @override
  State<googlemap> createState() => _googlemapPageState();
}

class _googlemapPageState extends State<googlemap> {
  int tappedChipIndex = -1;

  List<String> chipLabels = [
    'O+',
    'B+',
    'AB+',
    'A-',
    'B-',
    'AB-',
    'O-',
    'ALL',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.red,
          title: Text('JOHAR TOWN, LAHORE'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.person_2_outlined),
              onPressed: () {
                // Add your action here
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.black45,
              child: Image.asset(
                "assets/images/llllll.PNG",
                height: 50,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Blood Groups"),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Wrap(
                spacing: 8.0, // Spacing between chips
                runSpacing: 8.0, // Spacing between chip rows
                children: List.generate(8, (index) {
                  return CustomActionChip(
                    label: chipLabels[index], // Use the label from the list
                    isSelected: tappedChipIndex == index,
                    onPressed: () {
                      setState(() {
                        tappedChipIndex = index;
                      });
                    },
                  );
                }),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AllDonor()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      minimumSize: Size(150, 40),
                    ),
                    child: Text('Show All'),
                  ),

                  SizedBox(width: 16.0), // Spacing between the buttons
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DonorDetail()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      minimumSize: Size(150, 40),
                    ),
                    child: Text('ADD NEW DONOR'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
