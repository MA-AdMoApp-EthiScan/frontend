import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ethiscan/data/datasources/matadata_type_provider.dart';
import 'package:ethiscan/domain/entities/firestore/metadata_type.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';

void main() {
  late MetadataTypeRepositoryProvider metadataTypeProvider;
  late FakeFirebaseFirestore fakeFirestore;

  setUp(() {
    fakeFirestore = FakeFirebaseFirestore();
    metadataTypeProvider = MetadataTypeRepositoryProvider();
  });

  group('MetadataTypeProvider', () {
    test('getMetadataTypes returns metadata types if exists', () async {
      final metadataType = MetadataType(name: 'Test Metadata', schema: {});
      await fakeFirestore
          .collection('metadataTypes')
          .doc('1')
          .set(metadataType.toJson());

      final result = await metadataTypeProvider.getMetadataTypes();

      result.when(
        left: (failure) => fail('Expected metadata types but got failure'),
        right: (types) {
          expect(types.first.name, 'Test Metadata');
        },
      );
    });

    test('getMetadataTypes returns error if not exists', () async {
      final result = await metadataTypeProvider.getMetadataTypes();

      result.when(
        left: (failure) {
          expect(failure, isA<APIError>());
        },
        right: (_) => fail('Expected a failure but got metadata types'),
      );
    });
  });
}
