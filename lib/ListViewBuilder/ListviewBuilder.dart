import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  String? listName;
  ListViewBuilder({super.key, this.listName});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  List builderList = [
    'asset/ayasofia.jpg',
    'asset/bluemosque.jpg',
    'asset/download.jpg',
    'asset/inner.jpg',
    'asset/noor.jpg',
    'asset/panipat.jpg',
    'asset/taaaj.jpg',
    'asset/taj.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: builderList.length,
              itemBuilder: (context, index) {
                return Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                    child: Stack(
                      children: [
                        SizedBox(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            height: 130,
                            width: 100,
                            // child: Image.asset('${builderList[index]}'),
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage('${builderList[index]}'),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        // Text('${nameList[index]}')
                        Positioned(
                          left: 20,
                          right: 20,
                          bottom: 10,
                          child: Container(
                            width: 100,
                            child: Column(
                              children: [
                                Text(
                                  'data data',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'data',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)),
                                color: Color.fromRGBO(5, 59, 72, 10)),
                          ),
                        )
                      ],
                    ));
              }),
        ),
      ],
    );
  }
}
