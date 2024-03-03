import 'package:ethiscan/domain/entities/certification.dart';
import 'package:ethiscan/domain/entities/metadata.dart';

class Product {
  final String id;
  final String name;
  final String barcode;
  final List<Certification> certification;
  final List<Metadata> metadata;

  Product({
    required this.id,
    required this.name,
    required this.barcode,
    required this.certification,
    required this.metadata,
  });
}
