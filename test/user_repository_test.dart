import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ethiscan/data/datasources/user_provider.dart';
import 'mock_firebase.mocks.dart';
import 'package:ethiscan/firebase_options.dart';

void main() {
  late MockFirebaseFirestore mockFirestore;
  late MockCollectionReference<Map<String, dynamic>> mockCollectionReference;
  late MockDocumentReference<Map<String, dynamic>> mockDocumentReference;
  late MockDocumentSnapshot<Map<String, dynamic>> mockDocumentSnapshot;
  late UserRepositoryProvider userRepository;

  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  });

  setUp(() {
    mockFirestore = MockFirebaseFirestore();
    mockCollectionReference = MockCollectionReference<Map<String, dynamic>>();
    mockDocumentReference = MockDocumentReference<Map<String, dynamic>>();
    mockDocumentSnapshot = MockDocumentSnapshot<Map<String, dynamic>>();
    userRepository = UserRepositoryProvider();
  });

  group('UserRepository', () {
    testWidgets('getUserFromId returns EthiscanUser on success',
        (WidgetTester tester) async {
      when(mockFirestore.collection('users'))
          .thenReturn(mockCollectionReference);
      when(mockCollectionReference.doc(any)).thenReturn(mockDocumentReference);
      when(mockDocumentReference.get())
          .thenAnswer((_) async => mockDocumentSnapshot);
      when(mockDocumentSnapshot.exists).thenReturn(true);
      when(mockDocumentSnapshot.data()).thenReturn({
        'uid': '123',
        'email': 'test@test.com',
      });

      final result = await userRepository.getUserFromId('123');

      result.when(
        left: (error) => fail('Expected a User, but got an error: $error'),
        right: (user) {
          expect(user.uid, '123');
        },
      );
    });

    testWidgets('getUserFromId returns APIError on failure',
        (WidgetTester tester) async {
      when(mockFirestore.collection('users'))
          .thenReturn(mockCollectionReference);
      when(mockCollectionReference.doc(any)).thenReturn(mockDocumentReference);
      when(mockDocumentReference.get())
          .thenAnswer((_) async => mockDocumentSnapshot);
      when(mockDocumentSnapshot.exists).thenReturn(false);

      final result = await userRepository.getUserFromId('123');

      result.when(
        left: (error) {
          expect(error.message, 'User not found');
        },
        right: (_) => fail('Expected an error, but got a User'),
      );
    });
  });
}
