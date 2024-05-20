import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ethiscan/data/datasources/favorite_product_provider.dart';
import 'mock_firebase.mocks.dart';
import 'package:ethiscan/firebase_options.dart';

void main() {
  late MockFirebaseFirestore mockFirestore;
  late MockFirebaseAuth mockFirebaseAuth;
  late MockCollectionReference<Map<String, dynamic>> mockCollectionReference;
  late MockDocumentReference<Map<String, dynamic>> mockDocumentReference;
  late MockDocumentSnapshot<Map<String, dynamic>> mockDocumentSnapshot;
  late FavoriteProductRepositoryProvider favoriteProductRepository;

  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  });

  setUp(() {
    mockFirestore = MockFirebaseFirestore();
    mockFirebaseAuth = MockFirebaseAuth();
    mockCollectionReference = MockCollectionReference<Map<String, dynamic>>();
    mockDocumentReference = MockDocumentReference<Map<String, dynamic>>();
    mockDocumentSnapshot = MockDocumentSnapshot<Map<String, dynamic>>();
    favoriteProductRepository = FavoriteProductRepositoryProvider();
  });

  group('FavoriteProductRepository', () {
    testWidgets(
        'getFavoriteProducts returns list of FavoriteProducts on success',
        (WidgetTester tester) async {
      when(mockFirebaseAuth.currentUser).thenReturn(MockUser());
      when(mockFirebaseAuth.currentUser?.uid).thenReturn('123');
      when(mockFirestore.collection('users'))
          .thenReturn(mockCollectionReference);
      when(mockCollectionReference.doc(any)).thenReturn(mockDocumentReference);
      when(mockDocumentReference.get())
          .thenAnswer((_) async => mockDocumentSnapshot);
      when(mockDocumentSnapshot.exists).thenReturn(true);
      when(mockDocumentSnapshot.data()).thenReturn({
        'uid': '123',
        'favoriteProducts': [
          {
            'productId': 'prod1',
            'name': 'Favorite Product 1',
          },
          {
            'productId': 'prod2',
            'name': 'Favorite Product 2',
          },
        ],
      });

      final result = await favoriteProductRepository.getFavoriteProducts();

      result.when(
        left: (error) => fail(
            'Expected a list of FavoriteProducts, but got an error: $error'),
        right: (favorites) {
          expect(favorites.length, 2);
          expect(favorites[0].productId, 'prod1');
          expect(favorites[1].productId, 'prod2');
        },
      );
    });

    testWidgets('getFavoriteProducts returns APIError on failure',
        (WidgetTester tester) async {
      when(mockFirebaseAuth.currentUser).thenReturn(MockUser());
      when(mockFirebaseAuth.currentUser?.uid).thenReturn('123');
      when(mockFirestore.collection('users'))
          .thenReturn(mockCollectionReference);
      when(mockCollectionReference.doc(any)).thenReturn(mockDocumentReference);
      when(mockDocumentReference.get())
          .thenAnswer((_) async => mockDocumentSnapshot);
      when(mockDocumentSnapshot.exists).thenReturn(false);

      final result = await favoriteProductRepository.getFavoriteProducts();

      result.when(
        left: (error) {
          expect(error.message, 'User not found');
        },
        right: (_) =>
            fail('Expected an error, but got a list of FavoriteProducts'),
      );
    });
  });
}
