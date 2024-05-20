import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ethiscan/data/datasources/metadata_provider.dart';
import 'package:ethiscan/domain/entities/firestore/product_metadata.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';

void main() {
  late MetadataRepositoryProvider metadataProvider;
  late FakeFirebaseFirestore fakeFirestore;

  setUp(() {
    fakeFirestore = FakeFirebaseFirestore();
    metadataProvider = MetadataRepositoryProvider();
  });

  group('MetadataProvider', () {
    test('getMetadata returns metadata if exists', () async {
      final metadata = ProductMetadata(metadataTypeId: '1', data: {});
      await fakeFirestore
          .collection('metadata')
          .doc('1')
          .set(metadata.toJson());

      final result = await metadataProvider.getMetadata();

      expect(result.isRight, true);
      result.when(
        left: (failure) => fail('Expected metadata but got failure'),
        right: (metadataList) {
          expect(metadataList.first.metadataTypeId, '1');
        },
      );
    });

    test('getMetadata returns empty list if not exists', () async {
      final result = await metadataProvider.getMetadata();

      expect(result.isRight, true);
      result.when(
        left: (failure) => fail('Expected metadata but got failure'),
        right: (metadataList) {
          expect(metadataList.isEmpty, true);
        },
      );
    });
  });
}
