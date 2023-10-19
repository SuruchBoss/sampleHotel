import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:samplehotel/modules/people/controller/people_controller.dart';
import 'package:samplehotel/modules/people/domain/model/people.dart';

class PeopleListView extends StatefulWidget {
  const PeopleListView({super.key});

  @override
  State<PeopleListView> createState() => _PeopleListViewState();
}

class _PeopleListViewState extends State<PeopleListView> {
  final controller = PeopleController.to;

  RxList<People> peopleList = <People>[].obs;

  @override
  void initState() {
    print(controller.peopleList.obs.value.toJson());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Obx(
      () => SizedBox(
          width: width,
          height: height,
          child: ListView.builder(
            physics: const ClampingScrollPhysics(),
            itemCount: controller.peopleList.length,
            prototypeItem: const ListTile(
              title: Text("None"),
            ),
            itemBuilder: (context, index) {
              People items = controller.peopleList.obs.value[index];
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
                        )),
                    IconButton(
                      onPressed: () {
                        controller.peopleList.obs.value[index] = peopleList
                            .obs.value[index]
                            .copyWith(isDelete: true);
                      },
                      icon: const Icon(
                        Icons.remove_circle,
                        color: Colors.red,
                      ),
                    )
                  ]));
            },
          )),
    );
  }
}
