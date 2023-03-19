// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategorySchedule {
  int? get id => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryScheduleCopyWith<CategorySchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryScheduleCopyWith<$Res> {
  factory $CategoryScheduleCopyWith(
          CategorySchedule value, $Res Function(CategorySchedule) then) =
      _$CategoryScheduleCopyWithImpl<$Res, CategorySchedule>;
  @useResult
  $Res call({int? id, String? category});
}

/// @nodoc
class _$CategoryScheduleCopyWithImpl<$Res, $Val extends CategorySchedule>
    implements $CategoryScheduleCopyWith<$Res> {
  _$CategoryScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryScheduleCopyWith<$Res>
    implements $CategoryScheduleCopyWith<$Res> {
  factory _$$_CategoryScheduleCopyWith(
          _$_CategorySchedule value, $Res Function(_$_CategorySchedule) then) =
      __$$_CategoryScheduleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? category});
}

/// @nodoc
class __$$_CategoryScheduleCopyWithImpl<$Res>
    extends _$CategoryScheduleCopyWithImpl<$Res, _$_CategorySchedule>
    implements _$$_CategoryScheduleCopyWith<$Res> {
  __$$_CategoryScheduleCopyWithImpl(
      _$_CategorySchedule _value, $Res Function(_$_CategorySchedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
  }) {
    return _then(_$_CategorySchedule(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CategorySchedule extends _CategorySchedule {
  const _$_CategorySchedule({this.id, this.category}) : super._();

  @override
  final int? id;
  @override
  final String? category;

  @override
  String toString() {
    return 'CategorySchedule(id: $id, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategorySchedule &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryScheduleCopyWith<_$_CategorySchedule> get copyWith =>
      __$$_CategoryScheduleCopyWithImpl<_$_CategorySchedule>(this, _$identity);
}

abstract class _CategorySchedule extends CategorySchedule {
  const factory _CategorySchedule({final int? id, final String? category}) =
      _$_CategorySchedule;
  const _CategorySchedule._() : super._();

  @override
  int? get id;
  @override
  String? get category;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryScheduleCopyWith<_$_CategorySchedule> get copyWith =>
      throw _privateConstructorUsedError;
}
