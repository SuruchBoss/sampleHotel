// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'people.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

People _$PeopleFromJson(Map<String, dynamic> json) {
  return _People.fromJson(json);
}

/// @nodoc
mixin _$People {
  int? get id => throw _privateConstructorUsedError;
  String get imgPath => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get position => throw _privateConstructorUsedError;
  String get province => throw _privateConstructorUsedError;
  bool get isDelete => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeopleCopyWith<People> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeopleCopyWith<$Res> {
  factory $PeopleCopyWith(People value, $Res Function(People) then) =
      _$PeopleCopyWithImpl<$Res, People>;
  @useResult
  $Res call(
      {int? id,
      String imgPath,
      String firstname,
      String lastname,
      String address,
      String position,
      String province,
      bool isDelete});
}

/// @nodoc
class _$PeopleCopyWithImpl<$Res, $Val extends People>
    implements $PeopleCopyWith<$Res> {
  _$PeopleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imgPath = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? address = null,
    Object? position = null,
    Object? province = null,
    Object? isDelete = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imgPath: null == imgPath
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      isDelete: null == isDelete
          ? _value.isDelete
          : isDelete // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PeopleImplCopyWith<$Res> implements $PeopleCopyWith<$Res> {
  factory _$$PeopleImplCopyWith(
          _$PeopleImpl value, $Res Function(_$PeopleImpl) then) =
      __$$PeopleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String imgPath,
      String firstname,
      String lastname,
      String address,
      String position,
      String province,
      bool isDelete});
}

/// @nodoc
class __$$PeopleImplCopyWithImpl<$Res>
    extends _$PeopleCopyWithImpl<$Res, _$PeopleImpl>
    implements _$$PeopleImplCopyWith<$Res> {
  __$$PeopleImplCopyWithImpl(
      _$PeopleImpl _value, $Res Function(_$PeopleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imgPath = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? address = null,
    Object? position = null,
    Object? province = null,
    Object? isDelete = null,
  }) {
    return _then(_$PeopleImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imgPath: null == imgPath
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      isDelete: null == isDelete
          ? _value.isDelete
          : isDelete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PeopleImpl implements _People {
  const _$PeopleImpl(
      {this.id,
      this.imgPath = "assets/peopleImg/ppl01.jpg",
      this.firstname = '',
      this.lastname = '',
      this.address = '',
      this.position = 'Employee',
      this.province = '',
      this.isDelete = false});

  factory _$PeopleImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeopleImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey()
  final String imgPath;
  @override
  @JsonKey()
  final String firstname;
  @override
  @JsonKey()
  final String lastname;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String position;
  @override
  @JsonKey()
  final String province;
  @override
  @JsonKey()
  final bool isDelete;

  @override
  String toString() {
    return 'People(id: $id, imgPath: $imgPath, firstname: $firstname, lastname: $lastname, address: $address, position: $position, province: $province, isDelete: $isDelete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeopleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imgPath, imgPath) || other.imgPath == imgPath) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.isDelete, isDelete) ||
                other.isDelete == isDelete));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, imgPath, firstname, lastname,
      address, position, province, isDelete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PeopleImplCopyWith<_$PeopleImpl> get copyWith =>
      __$$PeopleImplCopyWithImpl<_$PeopleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeopleImplToJson(
      this,
    );
  }
}

abstract class _People implements People {
  const factory _People(
      {final int? id,
      final String imgPath,
      final String firstname,
      final String lastname,
      final String address,
      final String position,
      final String province,
      final bool isDelete}) = _$PeopleImpl;

  factory _People.fromJson(Map<String, dynamic> json) = _$PeopleImpl.fromJson;

  @override
  int? get id;
  @override
  String get imgPath;
  @override
  String get firstname;
  @override
  String get lastname;
  @override
  String get address;
  @override
  String get position;
  @override
  String get province;
  @override
  bool get isDelete;
  @override
  @JsonKey(ignore: true)
  _$$PeopleImplCopyWith<_$PeopleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
