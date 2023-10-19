import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:samplehotel/modules/people/controller/people_controller.dart';
import 'package:samplehotel/modules/people/domain/model/people.dart';
import 'package:samplehotel/modules/people/view/people_listfilter.dart';
import 'package:samplehotel/modules/people/view/people_listview.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  final controllerPeople = PeopleController.to;

  People hr = const People(
      id: 00001,
      firstname: "Jerry",
      lastname: "Marry",
      address: "1234ASDF",
      province: "bangkok",
      isDelete: false,
      position: "HR",
      imgPath: "assets/peopleImg/ppl01.jpg");

  @override
  void initState() {
    PeopleController.to.getFullList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    Widget mainProfile({required People people}) => Container(
        padding: EdgeInsets.only(
            top: height * 0.1,
            left: width * 0.05,
            right: width * 0.05,
            bottom: height * 0.05),
        color: const Color.fromARGB(178, 246, 158, 188),
        width: width,
        child: Row(children: [
          CircleAvatar(
            radius: width * 0.15,
            backgroundImage: AssetImage(hr.imgPath),
          ),
          SizedBox(
              width: width * 0.6,
              height: height * 0.08,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "${hr.firstname}  ${hr.lastname}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: height * 0.03, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    hr.position,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: height * 0.03, fontWeight: FontWeight.w500),
                  )
                ],
              ))
        ]));

    Widget tabBarMain() => SizedBox(
        width: width,
        height: height * 0.7,
        child: DefaultTabController(
          initialIndex: 0,
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(178, 246, 158, 188),
              bottom: const TabBar(
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.people_alt_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.map_outlined),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                Obx(
                  () => Container(
                      width: width,
                      height: height,
                      color: Colors.white,
                      child: PeopleListView(
                        peopleList:
                            controllerPeople.peopleList.obs.value.toList(),
                      )),
                ),
                SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: Container(
                      width: width,
                      height: height,
                      color: Colors.white,
                      child: const PeopleListFilter()),
                ),
              ],
            ),
          ),
        ));

    return Scaffold(
      body: Column(children: [mainProfile(people: hr), tabBarMain()]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => PeopleController.to.addNewEmp(),
        tooltip: 'Add people',
        child: const Icon(Icons.add),
      ),
    );
  }
}
