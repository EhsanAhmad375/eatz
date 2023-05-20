import 'package:eatz/CustomAppBar/CustomAppbar.dart';
import 'package:eatz/CustomMaterialButton/CustomMaterialButton.dart';
import 'package:eatz/DonateAmount/DonatAmountButton.dart';
import 'package:eatz/DonationSuccessfull/DonationSuccessful.dart';
import 'package:eatz/customTextFeild.dart/SignUpTextFormFeild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController enterOtherAmount = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: CustomAppBar(
        title: Image.asset(
          'asset/logo.png',
          height: 40,
        ),
        actions: [Icon(Icons.home)],
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50))),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  child: Text(
                'Zakay Option 1',
                style: TextStyle(
                    // color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('asset/noor.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text('''Lorem ispum is simply dummy
text of printing and type of setting 
industyry .Lorem '''),
                ],
              ),
              Divider(
                thickness: .5,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'DONATE AMONUT',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DonateAmountButton(
                    ontab: () {},
                    title: '\$1',
                  ),
                  DonateAmountButton(
                    ontab: () {},
                    title: '\$5',
                  ),
                  DonateAmountButton(
                    ontab: () {},
                    title: '\$10',
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DonateAmountButton(
                    ontab: () {},
                    title: '\$25',
                  ),
                  DonateAmountButton(
                    ontab: () {},
                    title: '\$50',
                  ),
                  DonateAmountButton(
                    ontab: () {},
                    title: '\$100',
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SignUpTextFromFeild(
                controller: enterOtherAmount,
                labeltext: "Enter Other Amount",
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: [
                    Text("You are currently donating "),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "\$5",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    CustomMaterialButton(
                      ontab: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DonationSuccessFul()));
                      },
                      elevation: 10,
                      color: Colors.cyanAccent.shade200,
                      buttonName: 'Proceed',
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
