// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permit_count.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PermitCount {
  int? get total => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PermitCountCopyWith<PermitCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermitCountCopyWith<$Res> {
  factory $PermitCountCopyWith(
          PermitCount value, $Res Function(PermitCount) then) =
      _$PermitCountCopyWithImpl<$Res, PermitCount>;
  @useResult
  $Res call({int? total});
}

/// @nodoc
class _$PermitCountCopyWithImpl<$Res, $Val extends PermitCount>
    implements $PermitCountCopyWith<$Res> {
  _$PermitCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PermitCountCopyWith<$Res>
    implements $PermitCountCopyWith<$Res> {
  factory _$$_PermitCountCopyWith(
          _$_PermitCount value, $Res Function(_$_PermitCount) then) =
      __$$_PermitCountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? total});
}

/// @nodoc
class __$$_PermitCountCopyWithImpl<$Res>
    extends _$PermitCountCopyWithImpl<$Res, _$_PermitCount>
    implements _$$_PermitCountCopyWith<$Res> {
  __$$_PermitCountCopyWithImpl(
      _$_PermitCount _value, $Res Function(_$_PermitCount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
  }) {
    return _then(_$_PermitCount(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_PermitCount extends _PermitCount {
  const _$_PermitCount({required this.total}) : super._();

  @override
  final int? total;

  @override
  String toString() {
    return 'PermitCount(total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PermitCount &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PermitCountCopyWith<_$_PermitCount> get copyWith =>
      __$$_PermitCountCopyWithImpl<_$_PermitCount>(this, _$identity);
}

abstract class _PermitCount extends PermitCount {
  const factory _PermitCount({required final int? total}) = _$_PermitCount;
  const _PermitCount._() : super._();

  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$_PermitCountCopyWith<_$_PermitCount> get copyWith =>
      throw _privateConstructorUsedError;
}
