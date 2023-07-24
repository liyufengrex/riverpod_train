// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoInfo _$TodoInfoFromJson(Map<String, dynamic> json) {
  return _TodoInfo.fromJson(json);
}

/// @nodoc
mixin _$TodoInfo {
  int get id => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get isCompleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoInfoCopyWith<TodoInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoInfoCopyWith<$Res> {
  factory $TodoInfoCopyWith(TodoInfo value, $Res Function(TodoInfo) then) =
      _$TodoInfoCopyWithImpl<$Res, TodoInfo>;
  @useResult
  $Res call({int id, String? description, bool? isCompleted});
}

/// @nodoc
class _$TodoInfoCopyWithImpl<$Res, $Val extends TodoInfo>
    implements $TodoInfoCopyWith<$Res> {
  _$TodoInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = freezed,
    Object? isCompleted = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoInfoCopyWith<$Res> implements $TodoInfoCopyWith<$Res> {
  factory _$$_TodoInfoCopyWith(
          _$_TodoInfo value, $Res Function(_$_TodoInfo) then) =
      __$$_TodoInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? description, bool? isCompleted});
}

/// @nodoc
class __$$_TodoInfoCopyWithImpl<$Res>
    extends _$TodoInfoCopyWithImpl<$Res, _$_TodoInfo>
    implements _$$_TodoInfoCopyWith<$Res> {
  __$$_TodoInfoCopyWithImpl(
      _$_TodoInfo _value, $Res Function(_$_TodoInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = freezed,
    Object? isCompleted = freezed,
  }) {
    return _then(_$_TodoInfo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodoInfo implements _TodoInfo {
  _$_TodoInfo({required this.id, this.description, this.isCompleted});

  factory _$_TodoInfo.fromJson(Map<String, dynamic> json) =>
      _$$_TodoInfoFromJson(json);

  @override
  final int id;
  @override
  final String? description;
  @override
  final bool? isCompleted;

  @override
  String toString() {
    return 'TodoInfo(id: $id, description: $description, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, description, isCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoInfoCopyWith<_$_TodoInfo> get copyWith =>
      __$$_TodoInfoCopyWithImpl<_$_TodoInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoInfoToJson(
      this,
    );
  }
}

abstract class _TodoInfo implements TodoInfo {
  factory _TodoInfo(
      {required final int id,
      final String? description,
      final bool? isCompleted}) = _$_TodoInfo;

  factory _TodoInfo.fromJson(Map<String, dynamic> json) = _$_TodoInfo.fromJson;

  @override
  int get id;
  @override
  String? get description;
  @override
  bool? get isCompleted;
  @override
  @JsonKey(ignore: true)
  _$$_TodoInfoCopyWith<_$_TodoInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
