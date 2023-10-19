import 'package:get/get.dart';
import 'package:samplehotel/modules/people/domain/model/people.dart';

class PeopleController extends GetxController {
  static PeopleController get to => Get.find();

  RxList<People> peopleList = <People>[].obs;

  initPeople() {
    peopleList.add(const People(
        id: 00001,
        firstname: "Jerry",
        lastname: "Marry",
        address: "1234ASDF",
        province: "bangkok",
        isDelete: false,
        position: "HR",
        imgPath: "assets/peopleImg/ppl01.jpg"));

    peopleList.add(const People(
        id: 00002,
        firstname: "Test02",
        lastname: "Apple",
        address: "1234ASDEE",
        province: "bangkok",
        isDelete: false,
        position: "Developer",
        imgPath: "assets/peopleImg/ppl01.jpg"));

    peopleList.add(const People(
        id: 00003,
        firstname: "Test03",
        lastname: "sample03",
        address: "1235abc",
        province: "phuket",
        isDelete: false,
        position: "Purchasing",
        imgPath: "assets/peopleImg/ppl02.jpg"));

    peopleList.add(const People(
        id: 00004,
        firstname: "Test04",
        lastname: "sample04",
        address: "13225abd",
        province: "chiangmai",
        isDelete: true,
        position: "Financial",
        imgPath: "assets/peopleImg/ppl03.jpg"));

    peopleList.add(const People(
        id: 00005,
        firstname: "Test05",
        lastname: "sample05",
        address: "1235abttc",
        province: "phuket",
        isDelete: false,
        position: "QA",
        imgPath: "assets/peopleImg/ppl02.jpg"));
  }

  RxList<People> getFullList() =>
      peopleList.obs.value.where((c) => c.isDelete != true).toList().obs;

  getByProvince(String reqProvince) => peopleList.obs.value
      .where((c) => c.province == reqProvince && c.isDelete != true)
      .toList();
}
