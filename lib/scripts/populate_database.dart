// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ethiscan/domain/entities/firestore/certification.dart';
import 'package:ethiscan/domain/entities/firestore/product.dart';
import 'package:ethiscan/domain/entities/firestore/metadata_type.dart';
import 'package:ethiscan/domain/entities/firestore/supplier.dart';
import 'package:ethiscan/domain/entities/firestore/sold_product.dart';
import 'package:ethiscan/domain/entities/firestore/product_metadata.dart';
import '../firebase_options.dart';

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
      id: 'animalHappiness', name: 'Animal Happiness', schema: {'note': 'int'}),
  MetadataType(
      id: 'localization', name: 'Localization', schema: {'location': 'string'}),
  MetadataType(id: 'allergies', name: 'Allergies', schema: {
    'gluten': 'bool',
    'lactose': 'bool',
    'peanuts': 'bool',
    'soy': 'bool'
  })
];

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

// Add Product Metadata
List<ProductMetadata> productMetadatas = [
  ProductMetadata(
    id: 'impactCarbone1',
    metadataTypeId: 'impactCarbone',
    data: {
      'note': 7,
      'co2Quantity': 1.2,
      'packagingPercentage': 30,
      'manufacturingPercentage': 40,
      'transportPercentage': 30
    },
  ),
  ProductMetadata(
    id: 'animalHappiness1',
    metadataTypeId: 'animalHappiness',
    data: {'note': 8},
  ),
  ProductMetadata(
    id: 'impactCarbone2',
    metadataTypeId: 'impactCarbone',
    data: {
      'note': 5,
      'co2Quantity': 2.3,
      'packagingPercentage': 20,
      'manufacturingPercentage': 50,
      'transportPercentage': 30
    },
  ),
  ProductMetadata(
    id: 'animalHappiness2',
    metadataTypeId: 'animalHappiness',
    data: {'note': 9},
  ),
  ProductMetadata(
    id: 'impactCarbone3',
    metadataTypeId: 'impactCarbone',
    data: {
      'note': 6,
      'co2Quantity': 1.5,
      'packagingPercentage': 25,
      'manufacturingPercentage': 45,
      'transportPercentage': 30
    },
  ),
  ProductMetadata(
    id: 'animalHappiness3',
    metadataTypeId: 'animalHappiness',
    data: {'note': 7},
  ),
  ProductMetadata(
    id: 'impactCarbone10',
    metadataTypeId: 'impactCarbone',
    data: {
      'note': 8,
      'co2Quantity': 1.9,
      'packagingPercentage': 87,
      'manufacturingPercentage': 3,
      'transportPercentage': 9
    },
  ),
];

// Add Products
List<Product> products = [
  Product(
    id: '1',
    name: 'Thé Froid Migros',
    imageUrl:
        'https://image.migros.ch/mo-boxed/v-w-480-h-360/c09d1280495d5b9d6821ad7ccb0e1f2b4e492f69/ice-tea-culte-peche.jpg',
    description: 'Thé froid citron Migros',
    certificationIds: ['bioSuisse'],
    productMetadataIds: ['impactCarbone1', 'animalHappiness1'],
  ),
  Product(
    id: '2',
    name: 'Pâtes Agnesi',
    imageUrl:
        'https://image.migros.ch/2017-large/c408b3320a93b4e623886d16e758752c21e16b1a.webp',
    description: 'Pâtes alimentaires Barilla',
    certificationIds: ['bioSuisse'],
    productMetadataIds: ['impactCarbone2'],
  ),
  Product(
    id: '3',
    name: 'Ovomaltine crunchy Cream',
    imageUrl:
        'https://image.migros.ch/2017-large/44d24e362e1ea2e4a2e862fa554092736808f1b0.webp',
    description: 'Les clients adorent ce produit pour son goût exceptionnel.',
    certificationIds: ['maxHavelaar'],
    productMetadataIds: ['impactCarbone3', 'animalHappiness2'],
  ),
  Product(
    id: '4',
    name: 'Lait écrémé pasteurisé',
    imageUrl:
        'https://www.coop.ch/img/produkte/310_310/RGB/6638350_001.jpg?_=1603463024056',
    description: 'Lait Écrémé UHT Bio Lactel',
    certificationIds: ['bioSuisse'],
    productMetadataIds: ['impactCarbone2'],
  ),
  Product(
    id: '5',
    name: 'Riz Basmati Naturaplan',
    imageUrl:
        'https://www.coop.ch/img/produkte/310_310/RGB/4085071_001.jpg?_=1678461300689',
    description: 'Riz Basmati Tilda',
    certificationIds: ['maxHavelaar'],
    productMetadataIds: ['impactCarbone1', 'animalHappiness3'],
  ),
  Product(
    id: '6',
    name: 'Chocolat au Lait Lindt',
    imageUrl:
        'https://www.coop.ch/img/produkte/310_310/RGB/3002224_001.jpg?_=1680178847300',
    description: 'Chocolat Noir Excellence 70% Cacao Lindt',
    certificationIds: ['bioSuisse', 'maxHavelaar'],
    productMetadataIds: ['impactCarbone2'],
  ),
  Product(
    id: '7',
    name: 'Eau Minérale Evian 6x1l',
    imageUrl:
        'https://www.coop.ch/img/produkte/310_310/RGB/3465973_001.jpg?_=1656670875825',
    description: 'Eau Minérale Naturelle Evian',
    certificationIds: [],
    productMetadataIds: ['impactCarbone3'],
  ),
  Product(
    id: '8',
    name: 'Yaourt Nature Activia',
    imageUrl:
        'https://www.coop.ch/img/produkte/310_310/RGB/6871530_001.jpg?_=1701302782906',
    description: 'Yaourt Nature Activia',
    certificationIds: ['bioSuisse'],
    productMetadataIds: ['impactCarbone1', 'animalHappiness2'],
  ),
  Product(
    id: '9',
    name: 'Huile de colza IP-Suisse',
    imageUrl:
        'https://denner.imgix.net/assets/6acc88aa-ff1a-4c44-ba76-db73bf46b3e3/web/027841_1_c_K.png?fit=fillmax&fill=solid&w=423&h=320&fm=webp&q=75&auto=format',
    description: 'Huile colza IP-Suisse',
    certificationIds: ['ipSuisse'],
    productMetadataIds: ['impactCarbone2'],
  ),
  Product(
    id: '10',
    name: 'Blévita Sésam',
    imageUrl:
        'https://image.migros.ch/mo-custom/v-w-263-h-225.42857142857142/7dfaa9ac90e5d899c96ecc11e5fe22ebc978c0d2/blevita-sesame.jpg',
    description: 'Biscuits cinq céréales au sésame',
    certificationIds: [],
    productMetadataIds: ['impactCarbone10'],
  )
];

// Add Suppliers
List<Supplier> suppliers = [
  Supplier(name: 'Migros', products: [
    SoldProduct(productId: '1', price: 1.95),
    SoldProduct(productId: '2', price: 3.0),
    SoldProduct(productId: '3', price: 4.95),
    SoldProduct(productId: '7', price: 6.3),
    SoldProduct(productId: '10', price: 3.55),
  ]),
  Supplier(name: 'Coop', products: [
    SoldProduct(productId: '4', price: 1.8),
    SoldProduct(productId: '5', price: 5.95),
    SoldProduct(productId: '6', price: 2.85),
    SoldProduct(productId: '7', price: 6.3),
  ]),
  Supplier(name: 'Denner', products: [
    SoldProduct(productId: '8', price: 3.95),
    SoldProduct(productId: '9', price: 3.55),
  ]),
  Supplier(name: 'Lidl', products: [SoldProduct(productId: '9', price: 3.55)]),
];

void main() async {
  print("Populating Firebase database");
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  print("Firebase initialized");

  // Add MetadataTypes
  for (var metadataType in metadataTypes) {
    try {
      await firestore
          .collection('metadataTypes')
          .doc(metadataType.id)
          .set(metadataType.toJson());
      print("Added MetadataType: ${metadataType.name}");
    } catch (e) {
      print("Error adding MetadataType ${metadataType.name}: $e");
    }
  }

  // Add Certifications
  for (var cert in certifications) {
    try {
      await firestore
          .collection('certifications')
          .doc(cert.id)
          .set(cert.toJson());
      print("Added Certification: ${cert.name}");
    } catch (e) {
      print("Error adding Certification ${cert.name}: $e");
    }
  }

  // Add Product Metadata
  for (var productMetadata in productMetadatas) {
    try {
      await firestore
          .collection('productMetadatas')
          .doc(productMetadata.id)
          .set(productMetadata.toJson());
      print("Added Product Metadata: ${productMetadata.id}");
    } catch (e) {
      print("Error adding Product Metadata ${productMetadata.id}: $e");
    }
  }

  // Add Products
  for (var product in products) {
    try {
      await firestore
          .collection('products')
          .doc(product.id)
          .set(product.toJson());
      print("Added Product: ${product.name}");
    } catch (e) {
      print("Error adding Product ${product.name}: $e");
    }
  }

  // Add Suppliers
  for (var supplier in suppliers) {
    try {
      // Convert SoldProduct objects to Map
      var supplierData = supplier.toJson();
      supplierData['products'] =
          supplier.products.map((soldProduct) => soldProduct.toJson()).toList();

      await firestore
          .collection('suppliers')
          .doc(supplier.name)
          .set(supplierData);
      print("Added Supplier: ${supplier.name}");
    } catch (e) {
      print("Error adding Supplier ${supplier.name}: $e");
    }
  }

  print('SUCCESS: GO TO SLEEP NOW');
}
