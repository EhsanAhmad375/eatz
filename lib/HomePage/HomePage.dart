import 'package:eatz/CustomAppBar/CustomAppbar.dart';
import 'package:eatz/Home/Home.dart';
import 'package:eatz/ListViewBuilder/ListviewBuilder.dart';
import 'package:eatz/searchTextFeild/SearchTextFeild.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List imgList = [
    'asset/mosque.png',
    'asset/synagogue.png',
    'asset/church.png',
    'asset/chinese.png',
    'asset/house.png',
  ];
  List nameList = ['Mosque', 'Synagogus', 'Church', 'Tample', 'House'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Image.asset(
          'asset/logo.png',
          height: 40,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Image.asset(
              'asset/logo.png',
              height: 30,
              width: 130,
            ),
            SizedBox(
              height: 80,
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                'Profile',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(color: Colors.white),
            ListTile(
              leading: Icon(
                Icons.monetization_on,
                color: Colors.white,
              ),
              title: Text(
                'Donate a cause',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(color: Colors.white),
            ListTile(
              leading: Icon(
                Icons.access_time,
                color: Colors.white,
              ),
              title: Text(
                'Donation History',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(color: Colors.white),
            ListTile(
              leading: Icon(
                Icons.badge,
                color: Colors.white,
              ),
              title: Text(
                'Ongoing Donation',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(color: Colors.white),
            ListTile(
              leading: Icon(
                Icons.calendar_month,
                color: Colors.white,
              ),
              title: Text(
                'Courses & Evevts',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(color: Colors.white),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: Text(
                'Sign Out',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(color: Colors.white),
          ],
        ),
      ),
      backgroundColor: Colors.blue,
      body: Stack(children: [
        Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50)),
                  color: Colors.grey.shade50),
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  SearchTextFeild(),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 1, horizontal: 4),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    // child: Material(
                                    //   elevation: 0.5,
                                    //   child: CircleAvatar(
                                    //     backgroundColor: Colors.white,
                                    //     radius: 30,
                                    //     child: Image.asset(
                                    //       '${imgList[index]}',
                                    //       height: 35,
                                    //       width: 35,
                                    //     ),
                                    //   ),
                                    // ),
                                  ),
                                  SizedBox(),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    child: Material(
                                      // elevation: 10,
                                      child: Container(
                                          height: 50,
                                          width: 50,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Image.asset(
                                              '${imgList[index]}',
                                              cacheHeight: 35,
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            // image: DecorationImage(
                                            //   image: AssetImage(
                                            //       '${imgList[index]}'),
                                          )),
                                    ),
                                  ),
                                  Text('${nameList[index]}')
                                ],
                              ));
                        }),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          child: ListViewBuilder(),
                        ),
                        Container(
                          height: 150,
                          decoration: BoxDecoration(),
                          child: ListViewBuilder(),
                        ),
                        Container(
                          height: 150,
                          decoration: BoxDecoration(),
                          child: ListViewBuilder(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
        // Positioned(
        //     top: 34,
        //     left: 100,
        //     right: 100,
        //     child: Container(
        //       height: 50,
        //       width: 180,
        //       decoration: BoxDecoration(
        //           image: DecorationImage(image: AssetImage('asset/logo.png')),
        //           borderRadius: BorderRadius.only(
        //               topRight: Radius.circular(50),
        //               topLeft: Radius.circular(10))),
        //     )),
        // // IconButton(onPressed: (){}, icon: Icon(Icons.menu))
      ]),
    );
  }
}
