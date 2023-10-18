import 'package:freezed_annotation/freezed_annotation.dart';

part 'people.freezed.dart';
part 'people.g.dart';

@freezed
class People with _$People {
  const factory People({
    required int id,
    required String dayOfWeek,
  }) = _People;

  factory People.fromJson(Map<String, Object?> json) => _$PeopleFromJson(json);
}
