import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:samplehotel/modules/people/controller/people_controller.dart';
import 'package:samplehotel/modules/people/domain/model/people.dart';

class PeopleListFilter extends StatefulWidget {
  const PeopleListFilter({super.key});

  @override
  State<PeopleListFilter> createState() => _PeopleListFilterState();
}

class _PeopleListFilterState extends State<PeopleListFilter> {
  final controller = PeopleController.to;

  RxList<People> peopleListBKK = <People>[].obs;
  RxList<People> peopleListPhu = <People>[].obs;
  RxList<People> peopleListCNX = <People>[].obs;

  @override
  void initState() {
    controller.initPeople();
    peopleListBKK = controller.getByProvince(reqProvince: "bangkok");
    peopleListPhu = controller.getByProvince(reqProvince: "phuket");
    peopleListCNX = controller.getByProvince(reqProvince: "chiangmai");

    super.initState();
  }

  @override
  void dispose() {
    controller.peopleList.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text("Bangkok"),
      Container(
          width: width,
          height: height * 0.07 * peopleListBKK.length,
          margin: const EdgeInsets.all(3.0),
          child: ListView.builder(
            physics: const ClampingScrollPhysics(),
            itemCount: peopleListBKK.length,
            prototypeItem: const ListTile(
              title: Text("None"),
            ),
            itemBuilder: (context, index) {
              People items = peopleListBKK.obs.value[index];
              return Container(
                  width: width,
                  margin: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(255, 205, 205, 205),
                          spreadRadius: 3),
                    ],
                  ),
                  child: Row(children: [
                    CircleAvatar(
                      radius: width * 0.1,
                      backgroundImage: AssetImage(items.imgPath),
                    ),
                    SizedBox(
                        width: width * 0.6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "${items.firstname}  ${items.lastname}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: height * 0.01,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              items.position,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: height * 0.01,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ))
                  ]));
            },
          )),
      const Text("Phuket"),
      Container(
          width: width,
          height: height * 0.07 * peopleListPhu.length,
          margin: const EdgeInsets.all(3.0),
          child: ListView.builder(
            physics: const ClampingScrollPhysics(),
            itemCount: peopleListPhu.length,
            prototypeItem: const ListTile(
              title: Text("None"),
            ),
            itemBuilder: (context, index) {
              People items = peopleListPhu.obs.value[index];
              return Container(
                  width: width,
                  margin: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(255, 205, 205, 205),
                          spreadRadius: 3),
                    ],
                  ),
                  child: Row(children: [
                    CircleAvatar(
                      radius: width * 0.1,
                      backgroundImage: AssetImage(items.imgPath),
                    ),
                    SizedBox(
                        width: width * 0.6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "${items.firstname}  ${items.lastname}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: height * 0.01,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              items.position,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: height * 0.01,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ))
                  ]));
            },
          )),
      const Text("Chiangmai"),
      Container(
          width: width,
          height: height * 0.07 * peopleListCNX.length,
          margin: const EdgeInsets.all(3.0),
          child: ListView.builder(
            physics: const ClampingScrollPhysics(),
            itemCount: peopleListCNX.length,
            prototypeItem: const ListTile(
              title: Text("None"),
            ),
            itemBuilder: (context, index) {
              People items = peopleListPhu.obs.value[index];
              return Container(
                  width: width,
                  margin: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(255, 205, 205, 205),
                          spreadRadius: 3),
                    ],
                  ),
                  child: Row(children: [
                    CircleAvatar(
                      radius: width * 0.1,
                      backgroundImage: AssetImage(items.imgPath),
                    ),
                    SizedBox(
                        width: width * 0.6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "${items.firstname}  ${items.lastname}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: height * 0.01,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              items.position,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: height * 0.01,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ))
                  ]));
            },
          ))
    ]);
  }
}
