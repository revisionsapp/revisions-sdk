// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostItemImpl _$$PostItemImplFromJson(Map<String, dynamic> json) =>
    _$PostItemImpl(
      id: json['id'] as String? ?? "",
      title: json['title'] as String? ?? "",
      description: json['description'] as String? ?? "",
      content: json['content'] == null
          ? ""
          : _contentfromJson(json['content'] as String),
      slug: json['slug'] as String? ?? "",
      image: json['image'] as String? ?? "",
      imageBlurhash: json['imageBlurhash'] as String? ?? "",
      createdAt: _dateTimeFromJson(json['createdAt'] as String),
      updatedAt: _dateTimeFromJson(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$PostItemImplToJson(_$PostItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'content': instance.content,
      'slug': instance.slug,
      'image': instance.image,
      'imageBlurhash': instance.imageBlurhash,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
