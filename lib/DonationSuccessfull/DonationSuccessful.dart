import 'package:eatz/Calander/Calender.dart';
import 'package:eatz/CustomAppBar/CustomAppbar.dart';
import 'package:eatz/CustomMaterialButton/CustomMaterialButton.dart';
import 'package:flutter/material.dart';

class DonationSuccessFul extends StatefulWidget {
  const DonationSuccessFul({super.key});

  @override
  State<DonationSuccessFul> createState() => _DonationSuccessFulState();
}

class _DonationSuccessFulState extends State<DonationSuccessFul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: Image.asset(
            'asset/logo.png',
            height: 40,
          ),
          actions: [Icon(Icons.home)]),
      backgroundColor: Colors.blue,
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            color: Colors.grey.shade100),
        child: Center(
          child: Container(
            height: 350,
            width: 400,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'WEST TOWN MASJID',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.grey,
                    ),
                    Text(
                      'Queens',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Center(
                    child: Column(
                  children: [
                    Text(
                      'Zakay Option 1',
                      style: TextStyle(
                          // color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.cyanAccent.shade200,
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 39,
                      ),
                    ),
                    Text('Awesome! Payment Successful.'),
                    Text(
                        'We will send yor donation receipt at your registered mobile and email.'),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Would you like to make ongoing donation?',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomMaterialButton(
                          ontab: () {},
                          elevation: 10,
                          color: Colors.grey.shade100,
                          buttonName: 'No',
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        CustomMaterialButton(
                          ontab: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CalendersPage()));
                          },
                          elevation: 10,
                          color: Color.lerp(Colors.amber, Colors.teal, .3),
                          buttonName: 'Yes',
                        )
                      ],
                    )
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
