// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presence_count.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PresenceCount {
  int? get total => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PresenceCountCopyWith<PresenceCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresenceCountCopyWith<$Res> {
  factory $PresenceCountCopyWith(
          PresenceCount value, $Res Function(PresenceCount) then) =
      _$PresenceCountCopyWithImpl<$Res, PresenceCount>;
  @useResult
  $Res call({int? total});
}

/// @nodoc
class _$PresenceCountCopyWithImpl<$Res, $Val extends PresenceCount>
    implements $PresenceCountCopyWith<$Res> {
  _$PresenceCountCopyWithImpl(this._value, this._then);

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
abstract class _$$_PresenceCountCopyWith<$Res>
    implements $PresenceCountCopyWith<$Res> {
  factory _$$_PresenceCountCopyWith(
          _$_PresenceCount value, $Res Function(_$_PresenceCount) then) =
      __$$_PresenceCountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? total});
}

/// @nodoc
class __$$_PresenceCountCopyWithImpl<$Res>
    extends _$PresenceCountCopyWithImpl<$Res, _$_PresenceCount>
    implements _$$_PresenceCountCopyWith<$Res> {
  __$$_PresenceCountCopyWithImpl(
      _$_PresenceCount _value, $Res Function(_$_PresenceCount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
  }) {
    return _then(_$_PresenceCount(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_PresenceCount extends _PresenceCount {
  const _$_PresenceCount({required this.total}) : super._();

  @override
  final int? total;

  @override
  String toString() {
    return 'PresenceCount(total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PresenceCount &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PresenceCountCopyWith<_$_PresenceCount> get copyWith =>
      __$$_PresenceCountCopyWithImpl<_$_PresenceCount>(this, _$identity);
}

abstract class _PresenceCount extends PresenceCount {
  const factory _PresenceCount({required final int? total}) = _$_PresenceCount;
  const _PresenceCount._() : super._();

  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$_PresenceCountCopyWith<_$_PresenceCount> get copyWith =>
      throw _privateConstructorUsedError;
}
