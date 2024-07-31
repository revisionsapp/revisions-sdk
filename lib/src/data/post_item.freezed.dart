// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostItem _$PostItemFromJson(Map<String, dynamic> json) {
  return _PostItem.fromJson(json);
}

/// @nodoc
mixin _$PostItem {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _contentfromJson)
  String get content => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get imageBlurhash => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson)
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostItemCopyWith<PostItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostItemCopyWith<$Res> {
  factory $PostItemCopyWith(PostItem value, $Res Function(PostItem) then) =
      _$PostItemCopyWithImpl<$Res, PostItem>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      @JsonKey(fromJson: _contentfromJson) String content,
      String slug,
      String image,
      String imageBlurhash,
      @JsonKey(fromJson: _dateTimeFromJson) DateTime createdAt,
      @JsonKey(fromJson: _dateTimeFromJson) DateTime updatedAt});
}

/// @nodoc
class _$PostItemCopyWithImpl<$Res, $Val extends PostItem>
    implements $PostItemCopyWith<$Res> {
  _$PostItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? content = null,
    Object? slug = null,
    Object? image = null,
    Object? imageBlurhash = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      imageBlurhash: null == imageBlurhash
          ? _value.imageBlurhash
          : imageBlurhash // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostItemImplCopyWith<$Res>
    implements $PostItemCopyWith<$Res> {
  factory _$$PostItemImplCopyWith(
          _$PostItemImpl value, $Res Function(_$PostItemImpl) then) =
      __$$PostItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      @JsonKey(fromJson: _contentfromJson) String content,
      String slug,
      String image,
      String imageBlurhash,
      @JsonKey(fromJson: _dateTimeFromJson) DateTime createdAt,
      @JsonKey(fromJson: _dateTimeFromJson) DateTime updatedAt});
}

/// @nodoc
class __$$PostItemImplCopyWithImpl<$Res>
    extends _$PostItemCopyWithImpl<$Res, _$PostItemImpl>
    implements _$$PostItemImplCopyWith<$Res> {
  __$$PostItemImplCopyWithImpl(
      _$PostItemImpl _value, $Res Function(_$PostItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? content = null,
    Object? slug = null,
    Object? image = null,
    Object? imageBlurhash = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$PostItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      imageBlurhash: null == imageBlurhash
          ? _value.imageBlurhash
          : imageBlurhash // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PostItemImpl extends _PostItem {
  _$PostItemImpl(
      {this.id = "",
      this.title = "",
      this.description = "",
      @JsonKey(fromJson: _contentfromJson) this.content = "",
      this.slug = "",
      this.image = "",
      this.imageBlurhash = "",
      @JsonKey(fromJson: _dateTimeFromJson) required this.createdAt,
      @JsonKey(fromJson: _dateTimeFromJson) required this.updatedAt})
      : super._();

  factory _$PostItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostItemImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey(fromJson: _contentfromJson)
  final String content;
  @override
  @JsonKey()
  final String slug;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final String imageBlurhash;
  @override
  @JsonKey(fromJson: _dateTimeFromJson)
  final DateTime createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson)
  final DateTime updatedAt;

  @override
  String toString() {
    return 'PostItem(id: $id, title: $title, description: $description, content: $content, slug: $slug, image: $image, imageBlurhash: $imageBlurhash, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.imageBlurhash, imageBlurhash) ||
                other.imageBlurhash == imageBlurhash) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, content,
      slug, image, imageBlurhash, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostItemImplCopyWith<_$PostItemImpl> get copyWith =>
      __$$PostItemImplCopyWithImpl<_$PostItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostItemImplToJson(
      this,
    );
  }
}

abstract class _PostItem extends PostItem {
  factory _PostItem(
      {final String id,
      final String title,
      final String description,
      @JsonKey(fromJson: _contentfromJson) final String content,
      final String slug,
      final String image,
      final String imageBlurhash,
      @JsonKey(fromJson: _dateTimeFromJson) required final DateTime createdAt,
      @JsonKey(fromJson: _dateTimeFromJson)
      required final DateTime updatedAt}) = _$PostItemImpl;
  _PostItem._() : super._();

  factory _PostItem.fromJson(Map<String, dynamic> json) =
      _$PostItemImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(fromJson: _contentfromJson)
  String get content;
  @override
  String get slug;
  @override
  String get image;
  @override
  String get imageBlurhash;
  @override
  @JsonKey(fromJson: _dateTimeFromJson)
  DateTime get createdAt;
  @override
  @JsonKey(fromJson: _dateTimeFromJson)
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$PostItemImplCopyWith<_$PostItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
