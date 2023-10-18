import 'package:get/get.dart';
import 'package:samplehotel/modules/people/domain/model/people.dart';

class PeopleController extends GetxController {
  static PeopleController get to => Get.find();

  Rx<People> people = const People().obs;
  RxList<People> peopleList = RxList().obs as RxList<People>;

  initPeople() {
    peopleList.add(const People(
        id: 12345,
        firstname: "test01",
        lastname: "sample01",
        address: "1234abc",
        province: "bangkok"));

    peopleList.add(const People(
        id: 12346,
        firstname: "text02",
        lastname: "sample02",
        address: "1235abc",
        province: "bangkok"));

    peopleList.add(const People(
        id: 12346,
        firstname: "text03",
        lastname: "sample03",
        address: "1225abd",
        province: "chiangmai"));
  }

  getPeopleLis() => peopleList.obs.value;
  getByProvince(String reqProvince) => peopleList.obs.value
      .where((c) => c.obs.value.province == reqProvince)
      .toList();
}
