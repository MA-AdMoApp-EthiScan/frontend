import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';
part 'certification.g.dart';

@JsonSerializable()
class Certification {
  final String id;
  final String name;
  final String description;
  final String imageUrl;

  Certification({
    id,
    required this.name,
    required this.description,
    required this.imageUrl,
  }) : id = id ?? const Uuid().v4();

  factory Certification.fromJson(Map<String, dynamic> json) =>
      _$CertificationFromJson(json);
  Map<String, dynamic> toJson() => _$CertificationToJson(this);
}
