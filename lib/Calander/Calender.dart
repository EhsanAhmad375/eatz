import 'package:eatz/CustomAppBar/CustomAppbar.dart';
import 'package:eatz/CustomMaterialButton/CustomMaterialButton.dart';
import 'package:eatz/DonateAmount/DonatAmountButton.dart';
import 'package:eatz/customTextFeild.dart/SignUpTextFormFeild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalendersPage extends StatefulWidget {
  const CalendersPage({super.key});

  @override
  State<CalendersPage> createState() => _CalendersPageState();
}

class _CalendersPageState extends State<CalendersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: CustomAppBar(
            title: Image.asset(
              'asset/logo.png',
              height: 40,
            ),
            actions: [Icon(Icons.home)]),
        body: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
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
                          child: Text(
                        'Zakay Option 1',
                        style: TextStyle(
                            // color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'ONGOING DONATION',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DonateAmountButton(
                            title: 'Weakly',
                            ontab: () {},
                          ),
                          DonateAmountButton(
                            title: 'Monthly',
                            ontab: () {},
                          ),
                          DonateAmountButton(
                            title: 'Yearly',
                            ontab: () {},
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Every'),
                          DonateAmountButton(
                              ontab: () {},
                              title: '1',
                              sufix: Icon(
                                Icons.abc,
                                color: Colors.black,
                              )
                              //

                              ),
                          Text('Day of Month')
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SignUpTextFromFeild(
                        labeltext: 'Start Date',
                        sufixicon: Icon(Icons.calendar_month),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SignUpTextFromFeild(
                        labeltext: 'End Date',
                        sufixicon: Icon(Icons.calendar_month),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            activeColor: Colors.black,
                            value: _isChecked,
                            onChanged: (value) {
                              setState(() {
                                _isChecked = value!;
                              });
                            },
                          ),
                          Text('Until i cancel')
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SignUpTextFromFeild(
                        labeltext: '\$40',
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Radio(
                                  activeColor: Colors.black,
                                  value: 1,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value!;
                                    });
                                  }),
                              Text('Same Card')
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                  activeColor: Colors.black,
                                  value: 2,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value!;
                                    });
                                  }),
                              Text('Another Card')
                            ],
                          ),
                        ],
                      ),
                      Center(
                        child: CustomMaterialButton(
                          buttonName: 'Save',
                          color: Colors.cyanAccent,
                          ontab: () {},
                        ),
                      )
                    ]))));
  }

  bool _isChecked = false;
  int _value = 0;
}
