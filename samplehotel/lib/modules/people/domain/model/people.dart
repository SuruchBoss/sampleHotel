import 'package:freezed_annotation/freezed_annotation.dart';

part 'people.freezed.dart';
part 'people.g.dart';

@freezed
class People with _$People {
  const factory People({
    int? id,
    @Default("assets/peopleImg/ppl01.jpg") String imgPath,
    @Default('') String firstname,
    @Default('') String lastname,
    @Default('') String address,
    @Default('Employee') String position,
    @Default('') String province,
    @Default(false) bool isDelete,
  }) = _People;

  factory People.fromJson(Map<String, Object?> json) => _$PeopleFromJson(json);
}
