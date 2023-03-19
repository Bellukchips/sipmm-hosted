// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permit_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PermitForm {
  SingleLineText? get title => throw _privateConstructorUsedError;
  TextValueObject? get description => throw _privateConstructorUsedError;
  DateValue? get date_permit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PermitFormCopyWith<PermitForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermitFormCopyWith<$Res> {
  factory $PermitFormCopyWith(
          PermitForm value, $Res Function(PermitForm) then) =
      _$PermitFormCopyWithImpl<$Res, PermitForm>;
  @useResult
  $Res call(
      {SingleLineText? title,
      TextValueObject? description,
      DateValue? date_permit});
}

/// @nodoc
class _$PermitFormCopyWithImpl<$Res, $Val extends PermitForm>
    implements $PermitFormCopyWith<$Res> {
  _$PermitFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? date_permit = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as SingleLineText?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as TextValueObject?,
      date_permit: freezed == date_permit
          ? _value.date_permit
          : date_permit // ignore: cast_nullable_to_non_nullable
              as DateValue?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PermitFormCopyWith<$Res>
    implements $PermitFormCopyWith<$Res> {
  factory _$$_PermitFormCopyWith(
          _$_PermitForm value, $Res Function(_$_PermitForm) then) =
      __$$_PermitFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SingleLineText? title,
      TextValueObject? description,
      DateValue? date_permit});
}

/// @nodoc
class __$$_PermitFormCopyWithImpl<$Res>
    extends _$PermitFormCopyWithImpl<$Res, _$_PermitForm>
    implements _$$_PermitFormCopyWith<$Res> {
  __$$_PermitFormCopyWithImpl(
      _$_PermitForm _value, $Res Function(_$_PermitForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? date_permit = freezed,
  }) {
    return _then(_$_PermitForm(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as SingleLineText?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as TextValueObject?,
      date_permit: freezed == date_permit
          ? _value.date_permit
          : date_permit // ignore: cast_nullable_to_non_nullable
              as DateValue?,
    ));
  }
}

/// @nodoc

class _$_PermitForm extends _PermitForm {
  const _$_PermitForm(
      {required this.title,
      required this.description,
      required this.date_permit})
      : super._();

  @override
  final SingleLineText? title;
  @override
  final TextValueObject? description;
  @override
  final DateValue? date_permit;

  @override
  String toString() {
    return 'PermitForm(title: $title, description: $description, date_permit: $date_permit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PermitForm &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date_permit, date_permit) ||
                other.date_permit == date_permit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description, date_permit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PermitFormCopyWith<_$_PermitForm> get copyWith =>
      __$$_PermitFormCopyWithImpl<_$_PermitForm>(this, _$identity);
}

abstract class _PermitForm extends PermitForm {
  const factory _PermitForm(
      {required final SingleLineText? title,
      required final TextValueObject? description,
      required final DateValue? date_permit}) = _$_PermitForm;
  const _PermitForm._() : super._();

  @override
  SingleLineText? get title;
  @override
  TextValueObject? get description;
  @override
  DateValue? get date_permit;
  @override
  @JsonKey(ignore: true)
  _$$_PermitFormCopyWith<_$_PermitForm> get copyWith =>
      throw _privateConstructorUsedError;
}
