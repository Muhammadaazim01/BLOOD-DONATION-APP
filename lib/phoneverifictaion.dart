import 'package:bismillah/map.dart';
import 'package:flutter/material.dart';

class Verify extends StatefulWidget {
  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: AppBar(
            backgroundColor: Colors.red,
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/Group 155.png',
                  height: 100,
                  width: 100,
                ),
              ],
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'PHONE VERIFICATION',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Text(
                'Enter the OTP we have sent on your mobile number: +3064567873',
                style: TextStyle(fontSize: 16, color: Colors.black45),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DigitBox(),
                  SizedBox(
                    width: 20,
                  ),
                  DigitBox(),
                  SizedBox(
                    width: 20,
                  ),
                  DigitBox(),
                  SizedBox(
                    width: 20,
                  ),
                  DigitBox(),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => googlemap()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  minimumSize: Size(150, 40),
                ),
                child: Text('VERIFY'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DigitBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(width: 1),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          counterText: '',
        ),
        maxLength: 1,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
      ),
    );
  }
}
