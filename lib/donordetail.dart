import 'package:bismillah/savedetail.dart';
import 'package:flutter/material.dart';

class DonorDetail extends StatefulWidget {
  @override
  _DonorDetailState createState() => _DonorDetailState();
}

class _DonorDetailState extends State<DonorDetail> {
  TextEditingController nameController = TextEditingController();
  TextEditingController placeController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController bloodGroupController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.red,
        title: Text('DONOR DETAIL'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: placeController,
              decoration: InputDecoration(labelText: 'Place'),
            ),
            TextField(
              controller: numberController,
              decoration: InputDecoration(labelText: 'Number'),
            ),
            TextField(
              controller: dateController,
              decoration: InputDecoration(labelText: 'Date'),
            ),
            TextField(
              controller: bloodGroupController,
              decoration: InputDecoration(labelText: 'BloodGroup'),
            ),
            SizedBox(
              height: 20,
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     if (nameController.text.isNotEmpty &&
            //         placeController.text.isNotEmpty &&
            //         numberController.text.isNotEmpty &&
            //         dateController.text.isNotEmpty &&
            //         bloodGroupController.text.isNotEmpty) {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => NewDonor(
            //             name: nameController.text,
            //             place: placeController.text,
            //             number: numberController.text,
            //             date: dateController.text,
            //             bloodGroup: bloodGroupController.text,
            //           ),
            //         ),
            //       );
            //     }
            //   },
            //   style: ElevatedButton.styleFrom(
            //     primary: Colors.red,
            //     minimumSize: Size(150, 40),
            //   ),
            //   child: Text('SEND'),
            // ),
            if (nameController.text.isNotEmpty &&
                placeController.text.isNotEmpty &&
                numberController.text.isNotEmpty &&
                dateController.text.isNotEmpty &&
                bloodGroupController.text.isNotEmpty)
              Column(
                children: [
                  Text('Name: ${nameController.text}'),
                  Text('Place: ${placeController.text}'),
                  Text('Number: ${numberController.text}'),
                  Text('Date: ${dateController.text}'),
                  Text('BloodGroup: ${bloodGroupController.text}'),
                ],
              ),
            Container(
              height: 100,
              width: 300,
              color: Colors.black45,
              child: Image.asset(
                "assets/images/llllll.PNG",
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => AllDonor()),
                      // );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      minimumSize: Size(150, 40),
                    ),
                    child: Text('Call'),
                  ),

                  SizedBox(width: 16.0), // Spacing between the buttons
                  ElevatedButton(
                    onPressed: () {
                      if (nameController.text.isNotEmpty &&
                          placeController.text.isNotEmpty &&
                          numberController.text.isNotEmpty &&
                          dateController.text.isNotEmpty &&
                          bloodGroupController.text.isNotEmpty) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SaveDetail(
                              name: nameController.text,
                              place: placeController.text,
                              number: numberController.text,
                              date: dateController.text,
                              bloodGroup: bloodGroupController.text,
                            ),
                          ),
                        );
                      }
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
          ],
        ),
      ),
    );
  }
}
