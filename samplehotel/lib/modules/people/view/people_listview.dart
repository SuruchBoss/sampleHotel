import 'package:flutter/material.dart';
import 'package:samplehotel/modules/people/controller/people_controller.dart';
import 'package:samplehotel/modules/people/domain/model/people.dart';

class PeopleListView extends StatefulWidget {
  final List<People> peopleList;
  const PeopleListView({super.key, required this.peopleList});

  @override
  State<PeopleListView> createState() => _PeopleListViewState();
}

class _PeopleListViewState extends State<PeopleListView> {
  @override
  void initState() {
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

    return SizedBox(
      width: width,
      height: height,
      child: ListView.builder(
        physics: const ClampingScrollPhysics(),
        itemCount: widget.peopleList.length,
        prototypeItem: const ListTile(
          title: Text("None"),
        ),
        itemBuilder: (context, index) {
          People items = widget.peopleList[index];
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
                  onPressed: () => PeopleController.to.setDelete(index: index),
                  icon: const Icon(
                    Icons.remove_circle,
                    color: Colors.red,
                  ),
                )
              ]));
        },
      ),
    );
  }
}
