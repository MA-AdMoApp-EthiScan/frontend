import 'package:json_annotation/json_annotation.dart';

part 'certification.g.dart';

@JsonSerializable()
class Certification {
  final String name;
  final String description;
  final String imageUrl;

  Certification({
    required this.name,
    required this.description,
    required this.imageUrl,
  });

  factory Certification.fromJson(Map<String, dynamic> json) =>
      _$CertificationFromJson(json);
  Map<String, dynamic> toJson() => _$CertificationToJson(this);
}
