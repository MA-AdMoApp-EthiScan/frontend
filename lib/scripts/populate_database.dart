// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ethiscan/domain/entities/certification.dart';
import 'package:ethiscan/domain/entities/product.dart';
import 'package:ethiscan/domain/entities/product_metadata.dart';
import 'package:ethiscan/domain/entities/metadata_type.dart';
import 'package:ethiscan/domain/entities/supplier.dart';
import 'package:ethiscan/domain/entities/sold_product.dart';

Future<void> main() async {
  await Firebase.initializeApp();

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Add MetadataTypes
  List<MetadataType> metadataTypes = [
    MetadataType(id: 'impactCarbone', name: 'Impact Carbone', schema: {
      'note': 'int',
      'co2Quantity': 'double',
      'packagingPercentage': 'double',
      'manufacturingPercentage': 'double',
      'transportPercentage': 'double'
    }),
    MetadataType(
        id: 'animalHappiness',
        name: 'Animal Happiness',
        schema: {'note': 'int'}),
    MetadataType(
        id: 'localization',
        name: 'Localization',
        schema: {'location': 'string'}),
    MetadataType(id: 'allergies', name: 'Allergies', schema: {
      'gluten': 'bool',
      'lactose': 'bool',
      'peanuts': 'bool',
      'soy': 'bool'
    })
  ];

  for (var metadataType in metadataTypes) {
    await firestore
        .collection('metadataTypes')
        .doc(metadataType.id)
        .set(metadataType.toJson());
  }

  // Add Certifications
  List<Certification> certifications = [
    Certification(
        id: 'bioSuisse',
        name: 'Bio Suisse',
        description:
            'Bio par principe, du champ à l’assiette. Un système qui fonctionne.',
        imageUrl:
            'https://commons.wikimedia.org/wiki/File:Bio_suisse_logo_(cropped).png'),
    Certification(
        id: 'ipSuisse',
        name: 'IP Suisse',
        description: 'Bauern denken an morgen',
        imageUrl:
            'https://www.ipsuisse.ch/wp-content/uploads/Logo_ips_200px.png'),
    Certification(
        id: 'maxHavelaar',
        name: 'Max Havelaar',
        description:
            'Le label Fairtrade désigne des produits dont la culture et la commercialisation répondent à des critères sociaux, écologiques et économiques',
        imageUrl:
            'https://www.fairtrademaxhavelaar.ch/fileadmin/_processed_/8/1/csm_FM_MH_RGB_6a0e9a690f.jpg')
  ];

  for (var cert in certifications) {
    await firestore
        .collection('certifications')
        .doc(cert.id)
        .set(cert.toJson());
  }

  // Add Products
  List<Product> products = [
    Product(
        id: '1',
        name: 'Thé Froid Migros',
        imageUrl:
            'https://image.migros.ch/mo-boxed/v-w-480-h-360/c09d1280495d5b9d6821ad7ccb0e1f2b4e492f69/ice-tea-culte-peche.jpg',
        description: 'Thé froid citron Migros',
        certificationIds: [
          'bioSuisse'
        ],
        productMetadatas: [
          ProductMetadata(metadataTypeId: 'impactCarbone', data: {
            'note': 7,
            'co2Quantity': 1.2,
            'packagingPercentage': 30,
            'manufacturingPercentage': 40,
            'transportPercentage': 30
          }),
          ProductMetadata(metadataTypeId: 'animalHappiness', data: {'note': 8})
        ])
  ];

  for (var product in products) {
    await firestore
        .collection('products')
        .doc(product.id)
        .set(product.toJson());
  }

  // Add Suppliers
  List<Supplier> suppliers = [
    Supplier(
        name: 'Migros', products: [SoldProduct(productId: '1', price: 1.5)]),
    Supplier(name: 'Coop', products: []),
    Supplier(name: 'Denner', products: []),
    Supplier(name: 'Lidl', products: []),
    Supplier(name: 'Aldi', products: [])
  ];

  for (var supplier in suppliers) {
    await firestore
        .collection('suppliers')
        .doc(supplier.name)
        .set(supplier.toJson());
  }

  print('Data successfully added to Firebase');
}
