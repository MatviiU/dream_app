import 'package:json_annotation/json_annotation.dart';

part 'like_dto.g.dart';

@JsonSerializable()
class LikeDTO {
  LikeDTO({this.contains});

  factory LikeDTO.fromJson(Map<String, dynamic> json) =>
      _$LikeDTOFromJson(json);


  bool? contains;
}
