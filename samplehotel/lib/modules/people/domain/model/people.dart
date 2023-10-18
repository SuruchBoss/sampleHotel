import 'package:freezed_annotation/freezed_annotation.dart';

part 'people.freezed.dart';
part 'people.g.dart';

@freezed
class People with _$People {
  const factory People({
    int? id,
    @Default('') String firstname,
    @Default('') String lastname,
    @Default('') String address,
    @Default('') String province,
    @Default(false) bool isDelete,
  }) = _People;

  factory People.fromJson(Map<String, Object?> json) => _$PeopleFromJson(json);
}
