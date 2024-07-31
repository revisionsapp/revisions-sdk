import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_item.freezed.dart';
part 'post_item.g.dart';

// build runner
// dart run build_runner build --delete-conflicting-outputs

@freezed
class PostItem with _$PostItem {
  const PostItem._();
  @JsonSerializable(explicitToJson: true)
  factory PostItem({
    @Default("") String id,
    @Default("") String title,
    @Default("") String description,
    @JsonKey(fromJson: _contentfromJson) @Default("") String content,
    @Default("") String slug,
    @Default("") String image,
    @Default("") String imageBlurhash,
    @JsonKey(fromJson: _dateTimeFromJson) required DateTime createdAt,
    @JsonKey(fromJson: _dateTimeFromJson) required DateTime updatedAt,
  }) = _PostItem;

  factory PostItem.fromJson(Map<String, dynamic> json) =>
      _$PostItemFromJson(json);
}

String _contentfromJson(String content) {
  return utf8.decode(content.runes.toList());
}

DateTime _dateTimeFromJson(String date) {
  return DateTime.tryParse(date) ?? DateTime.now();
}
